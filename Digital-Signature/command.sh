openssl genpkey -algorithm RSA -out private_key.pem
cat private_key.pem
openssl pkey -in private_key.pem -pubout -out public_key.pem
cat public_key.pem
echo "Hello friend this is secret message, and i have signed it." >> letter.txt
cat letter.txt
openssl dgst -sha256 -sign private_key.pem -out signature letter.txt
cat signature
openssl dgst -sha256 -verify public_key.pem -signature signature letter.txt
vi contract.txt
echo "hi friend this is secret message, and i have signed it." >> letter.txt
openssl dgst -sha256 -verify public_key.pem -signature signature letter.txt