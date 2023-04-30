# To generate the hash of a file you can choose or use any method you like
# openssl sha256, openssl sha512 or sha512sum, sha256sum in both the cases the hashes
# will be same

openssl sha512 filename


openssl sha256 filename

sha512sum filename > hash.txt

# To verify the hash value compute the news hash generated with the original hash
cat hash.txt


sha512sum filename
 
