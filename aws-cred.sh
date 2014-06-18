env=\"$1\"

export AWS_ACCESS_KEY_ID=`ruby -rinifile -e "puts IniFile.load(File.join(File.expand_path('~'), '.aws', 'credentials'))[$env]['aws_access_key_id']"`
export AWS_SECRET_ACCESS_KEY=`ruby -rinifile -e "puts IniFile.load(File.join(File.expand_path('~'), '.aws', 'credentials'))[$env]['aws_secret_access_key']"`
export AWS_DEFAULT_REGION=`ruby -rinifile -e "puts IniFile.load(File.join(File.expand_path('~'), '.aws', 'credentials'))[$env]['region']"`
export AWS_SSH_KEY_ID='michaelwood'
export AWS_ENV=$1

echo $1 > ~/opt/env
