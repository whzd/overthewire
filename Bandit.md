# Bandit

`ssh bandit.labs.overthewire.org -p 2220`

## Level 0

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit0`

password: `bandit0`

**Solution:**

    cat readme

## Level 1

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit1`

password: `boJ9jbbUNNfktd78OOpsqOltutMc3MY1`

**Solution:**

    cat ./-

## Level 2

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit2`

password: `CV1DtqXWVFXTvM2F0k09SHz0YwRINYA9`

**Solution:**

    cat "spaces in this filename"

## Level 3

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit3`

password: `UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK`

**Solution:**

    cat inhere/.hidden

## Level 4

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit4`

password: `pIwrPrtPN36QITSp3EQaw936yaFoFgAB`

**Solution:**

    find inhere/ -type f -exec file '{}' \;
    (ALTERNATIVE: find inhere/ -type f | xargs file | grep ASCII)
    cat inhere/-file07

## Level 5

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit5`

password: `koReBOKuIDDepwhWk7jZC0RTdopnAYKh`

**Solution:**

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

    cat data.txt | grep millionth

## Level 8

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit8`

password: `cvX2JJa4CFALtqS87jk27qwqGhBM9plV`

**Solution:**

    sort data.txt | uniq -u

## Level 9

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit9`

password: `UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR`

**Solution:**

    strings data.txt | grep ==.

## Level 10

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit10`

password: `truKLdjsbJ5g7yyJ2X2R0o3a5HQJFuLk`

**Solution:**

    base64 -d data.txt

## Level 11

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit11`

password: `IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR`

**Solution:**

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

    diff passwords.old passwords.new

## Level 18

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit18`

password: `kfBf3eYk5BPBRzwjqutbbfE887SVc5Yd`

**Solution:**

    ssh bandit.labs.overthewire.org -p 2220 -l bandit18 -t 'cat readme'

## Level 19

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit19`

password: `IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x`

**Solution:**

    ./bandit20-do
    ./bandit20-do cat /etc/bandit_pass/bandit20

## Level 20

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit20`

password: `GbKksEFF4yrVs6il55v6gwY5aVje5f0j`

**Solution:**

    screen

    SCREEN1:
    screen
    cat /etc/bandit_pass/bandit20 | nc -l -p 16969

    SCREEN2:
    ./suconnect 16969

## Level 21

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit21`

password: `gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr`

**Solution:**

    ls /etc/cron.d
    cat /etc/cron.d/cronjob_bandit22
    cat /usr/bin/cronjob_bandit22.sh
    cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv

## Level 22

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit22`

password: `Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI`

**Solution:**

    ls /etc/cron.d/
    cat /usr/bin/cronjob_bandit23.sh
    echo I am user bandit23 | md5sum | cut -d ' ' -f 1
    cat /tmp/8ca319486bfbbc3663ea0fbe81326349

## Level 23

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit23`

password: `jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n`

**Solution:**

    ls /etc/cron.d
    cat /etc/cron.d/cronjob_bandit24
    cat /usr/bin/cronjob_bandit24.sh
    mkdir -p /tmp/testxs
    cd /tmp/testxs
    vim bandit24.sh
    chmod 777 bandit24.sh
    touch pw24.txt
    chmod 666 pw24.txt
    cp bandit24.sh /var/spool/bandit24
    (WAIT 1 MINUTE)
    cat pw24.txt

THE SCRIPT CREATED CAN BE FOUND [HERE](./bandit24.sh).

## Level 24

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit24`

password: `UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ`

**Solution:**

    mkdir -p /tmp/qwerty24
    cd /tmp/qwerty24
    vim bandit25.sh
    chmod 700 bandit25.sh
    (OPTIONAL:
    touch pin.txt
    chmod 600 pin.txt)
    ./bandit25.sh
    (OPTIONAL:
    cat pin.txt)

THE SCRIPT CREATED CAN BE FOUND [HERE](./bandit25.sh).

## Level 25 & Level 26

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit25`

password25: `uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG`

**Solution:**

    cat /etc/passwd | grep bandit26
    cat /usr/bin/showtext
    RESIZE THE TERMINAL WINDOW SO THAT 'MORE' WON'T FULLY LOAD THE TEXT.
    ssh -i bandit26.sshkey bandit26@localhost
    v
    :set shell=/bin/bash
    :shell
    ./bandit27-do cat /etc/bandit_pass/bandit27

## Level 27

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit27`

password: `3ba3118a22e93127a4ed485be72ef5ea`

**Solution:**

    mkdir -p /tmp/wsx27
    cd /tmp/wsx27
    git clone ssh://bandit27-git@localhost/home/bandit27-git/repo
    cat repo/README

## Level 28

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit28`

password: `0ef186ac70e04ea33b4c1853d2526fa2`

**Solution:**

    mkdir -p /tmp/wsx29
    cd /tmp/wsx29
    git clone ssh://bandit28-git@localhost/home/bandit28-git/repo
    cat repo/README.md
    cd repo/
    git log
    git checkout 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
    cat README.md

## Level 29

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit29`

password: `bbc96594b4e001778eee9975372716b2`

**Solution:**

    mkdir -p /tmp/wsx029
    cd /tmp/wsx029
    git clone ssh://bandit29-git@localhost/home/bandit29-git/repo
    cd repo/
    cat README.md
    git branch -a
    git checkout remotes/origin/dev
    ls
    cat README.md

## Level 30

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit30`

password: `5b90576bedb2cc04c86a9e924ce42faf`

**Solution:**

## Level 31

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level 32

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**

## Level 33

**Credentials:**

`ssh bandit.labs.overthewire.org -p 2220 -l bandit`

password: ``

**Solution:**
