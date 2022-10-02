#!/bin/bash
CERTIFICATE_FILE=/etc/ssh/ssh_host_ecdsa_key-cert.pub
KEY_FILE=/etc/ssh/ssh_host_ecdsa_key
NO_OF_DAYS_BEFORE_EXPIRY=5

EXPIRYDATE=$(step ssh inspect --format=json $CERTIFICATE_FILE | jq -r ".ValidBefore")
TIMESTAMP_IN_FUTURE=$(date --date "$NO_OF_DAYS_BEFORE_EXPIRY days" +%s)

EXPIRY_TIMESTAMP=$(date --date "$EXPIRYDATE" +'%s')
echo "The Certificate will expire at $EXPIRYDATE, TS=$EXPIRY_TIMESTAMP"
echo "$NO_OF_DAYS_BEFORE_EXPIRY days in future is $TIMESTAMP_IN_FUTURE"

if [[ $EXPIRY_TIMESTAMP < $TIMESTAMP_IN_FUTURE ]]
then
        echo "Need to renew"
        step ssh renew -f $CERTIFICATE_FILE $KEY_FILE
else
        echo "Renew later"
fi
