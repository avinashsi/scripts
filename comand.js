var sys = require('sys');
var exec = require('child_process').exec;
var child;
var instance_type='m1.xlarge';
var start_time='2015-05-26T07:08:09';
var end_time='2015-05-27T07:08:09';
var region='us-west-2';

var Timestamp, ProductDescription ,InstanceType, AvailabilityZone ,SpotPrice;
var counter = 1;
var mysql = require('mysql');
var genericpool = require("generic-pool");

        var pool = genericpool.Pool({
                name: "MySQL",
                create: function (callback) {
                        var client = mysql.createConnection({
                                host: 'localhost',
                                database: 'telematics_development',
                                user: 'root',
                                password: 'paxcel@123'
                        });
                        client.connect(function (error) {
                                if (error) {
                                        console.log("error",error);
                                }
                                callback(error, client);
                        });
                },
                destroy: function(client) {
                        client.end();
                },
                max: 100,
                min: 10,
                idleTimeoutMillis: 30000,
                log : false
        });



// executes `pwd`
child = exec("aws ec2 describe-spot-price-history --instance-types "+instance_type+" --product-description Linux/UNIX --start-time "+start_time+" --end-time "+end_time+"  --region "+region, function (error, stdout, stderr) {
  //console.log(stdout);
  //console.log(stderr);
  if (error !== null) {
    console.log('exec error: ' + error);
 }else{
        pool.acquire(function(err,connection){
                  if(err){
                                console.log(err);

                  }
                  else{
                        //console.log(stdout.SpotPriceHistory);
                        stdout = JSON.parse(stdout);
                        for(var i=0;i<stdout.SpotPriceHistory.length;i++){
                                Timestamp = stdout.SpotPriceHistory[i].Timestamp;
                                ProductDescription = stdout.SpotPriceHistory[i].ProductDescription;
                                InstanceType = stdout.SpotPriceHistory[i].InstanceType;
                                AvailabilityZone = stdout.SpotPriceHistory[i].InstanceType;
                                SpotPrice = stdout.SpotPriceHistory[i].SpotPrice;

                        connection.query('INSERT INTO SpotPriceHistory VALUES("'+Timestamp+'","'+ProductDescription+'","'+InstanceType+'","'+AvailabilityZone+'","'+SpotPrice+'")',function(err,result){
                        if(err){
                                console.log(err);
                        }else{
                                console.log(counter + ' row inserted');
                                counter++;
                        }
                        });
                        }
                          pool.release(connection);
                        //console.log('done !');
                }
        });
}

});
