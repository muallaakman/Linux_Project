MY_KEY=$(cat certificate.pem)

echo $MY_KEY

echo -e $MY_KEY > new.pem

#--------------------------------------OR

echo -e $(cat certificate.pem) > new.pem

#--------------------------------------OR

cat certificate.pem | sed 's/\\n/\n/g' | tee new.pem