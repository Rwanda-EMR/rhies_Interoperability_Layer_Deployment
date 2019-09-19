set -e
now=$(date +"%s_%Y-%m-%d")




#Starting openhim backup 
backupPath="/opt/data/rhies/rhies_deployment/disc/backup/openhim/"
folderName="${backupPath}${now}/" 
mkdir -p  ${folderName} 
mongodump --host 127.0.0.1 -d openhim --port 27018 --out ${folderName}
wait 
cd ${backupPath} 
tar -zcvf ${now}.tar.gz ${now}
rm -rf ${now}


#Starting openmrs backup
user="root"
pwd="root"



#1 OpenMRS remera-hc-440
sitename="remerahc440"
host="127.0.0.1"
port="3308"
db="openmrs"
backupPath="/opt/data/rhies/rhies_deployment/disc/backup/openmrs/${sitename}/"
fileName="${backupPath}${now}_${sitename}.sql" 
mkdir -p  ${backupPath} 
/usr/bin/mysqldump --opt -h ${host}  -P ${port} -u ${user}  -p${pwd}  ${db} > ${fileName}
wait
d ${backupPath} 
gzip ${fileName}.sql
wait 



#2 OpenMRS rukoma-sake-hc-442
sitename="rukomasakehc442"
host="127.0.0.1"
port="3309"
db="openmrs"
backupPath="/opt/data/rhies/rhies_deployment/disc/backup/openmrs/${sitename}/"
fileName="${backupPath}${now}_${sitename}.sql" 
mkdir -p  ${backupPath} 
/usr/bin/mysqldump --opt -h ${host}  -P ${port} -u ${user}  -p${pwd}  ${db} > ${fileName}
wait
d ${backupPath} 
gzip ${fileName}.sql
wait
