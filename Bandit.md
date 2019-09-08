# Bandit

`ssh bandit.labs.overthewire.org -p 2220`

## Level 0

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit0`

password: `bandit0`

**Solution:**

    ls
    cat readme

## Level 1

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit1`

password: `boJ9jbbUNNfktd78OOpsqOltutMc3MY1`

**Solution:**

    ls
    cat ./-

## Level 2

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit2`

password: `CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9`

**Solution:**

    ls
    cat "spaces in this filename"

## Level 3

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit3`

password: `UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK`

**Solution:**

    ls
    cat inhere/.hidden

## Level 4

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit4`

password: `pIwrPrtPN36QITSp3EQaw936yaFoFgAB`

**Solution:**

    ls
    find inhere/ -type f -exec file '{}' \;
    (ALTERNATIVE: find inhere/ -type f | xargs file | grep ASCII)
    cat inhere/-file07

## Level 5

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit5`

password: `koReBOKuIDDepwhWk7jZC0RTdopnAYKh`

**Solution:**

    ls
    find inhere/ -type f -size 1033c ! -executable -exec file '{}' \;
    (ALTERNATIVE: find inhere/ -type f -size 1033c ! -executable | xargs file | grep ASCII)
    cat inhere/maybehere07/.file2

## Level 6

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit6`

password: `DXjZPULLxYr17uwoI01bNLQbtFemEgo7`

**Solution:**

    find / -size 33c -group bandit6 -user bandit7
    cat /var/lib/dpkg/info/bandit7.password

## Level 7

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit7`

password: `HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs`

**Solution:**

    ls
    cat data.txt | grep millionth

## Level 8

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit8`

password: `cvX2JJa4CFALtqS87jk27qwqGhBM9plV`

**Solution:**

    ls
    sort data.txt | uniq -u

## Level 9

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit9`

password: `UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR`

**Solution:**

    ls
    strings data.txt | grep ==.

## Level 10

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit10`

password: `truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk`

**Solution:**

    ls
    base64 -d data.txt

## Level 11

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit11`

password: `IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR`

**Solution:**

    ls
    cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'

## Level 12

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit12`

password: `5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu`

**Solution:**

    mkdir /tmp/whzd
    cp data.txt /tmp/whzd
    cd /tmp/whzd
    xxd -r data.txt data2.bin
    file data2.bin
    mv data2.bin data2.gz
    gzip -d data2.gz
    file data2
    mv data2 data2.bz
    bzip2 -d data2.bz
    file data2
    mv data2 data2.gz
    gzip -d data2.gz
    file data2
    mv data2 data2.tar
    tar --extract -f data2.tar
    file data5.bin
    mv data5.bin data5.tar
    tar --extract -f data5.tar
    file data6.bin
    mv data6.bin data6.bz
    bzip2 -d data6.bz
    file data6
    mv data6 data6.tar
    tar --extract -f data6.tar
    file data8.bin
    mv data8.bin data8.gz
    gzip -d data8.gz
    file data8
    cat data8

## Level 13

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit13`

password: `8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL`

**Solution:**

    ssh bandit14@localhost -i sshkey.private
    cat /etc/bandit_pass/bandit14

## Level 14

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit14`

password: `4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e`

**Solution:**

    cat /etc/bandit_pass/bandit14 | nc localhost 30000

## Level 15

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit15`

password: `BfMYroe26WYalil77FoDi9qh59eK5xNr`

**Solution:**

    cat /etc/bandit_pass/bandit15 | openssl s_client -connect localhost:30001 -quiet

## Level 16

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit16`

password: `cluFn7wTiGryunymYOu4RcffSxQluehd`

**Solution:**

    nc -zv localhost 31000-32000
    cat /etc/bandit_pass/bandit16 | openssl s_client -connect localhost:31790 -quiet

## Level 17

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit17 -i sshkey17.private`

INFO: Use `chmod 600 sshkey17.private` if not accepted.

password: [RSA_PRIVATE_KEY](./sshkey17.private)

**Solution:**

## Level 18

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level 19

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level 20

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level 21

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**