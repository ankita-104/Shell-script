#!/bin/sh

#simple password generator

echo "This is a simple passwprd generator"

echo "Please enter the length of password required:"

read pass_len

echo "Enter the number of varieties of passwords of length $pass_len you want:"

read se

echo "Here are the $se passwords of length $pass_len:"

for p in $(seq 1 $se)
do
	openssl rand -base64 48 | cut -c1-$pass_len
	#base64 is a binary-to-text encoding scheme with a maximum of 48 range
	#we can use -hex as well, but base64 generates most secured passwords.

done

