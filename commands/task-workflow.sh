#!/bin/bash
# Linux Task 02 - Command Workflow
# Run the commands step-by-step rather than blindly executing the whole file.
# Some commands require interactive input (password/nano) or depend on your current state.

# STEP 1: Create and switch to student01
sudo useradd -m -s /bin/bash student01
sudo passwd student01
sudo usermod -aG sudo student01
su - student01
whoami

# STEP 2: Directory & File Management
cd ~
mkdir project
cd project
mkdir docs scripts bin
cd docs
echo "This is the initial report by student01." > report.txt
ls -la
echo "Top Secret." > .secret.txt

# STEP 3: Edit and Move Files
nano report.txt
# Add this second line in nano:
# Appended line using nano.

cp report.txt ../scripts/
mv .secret.txt ../bin/classified.txt
cd ../scripts
nano install.sh
# The required install.sh content is stored in scripts/install.sh.

# STEP 4: Permissions with chmod
chmod a+x install.sh
cd ../bin
chmod o-r classified.txt
cd ../docs
touch admin_notes.txt
chmod u=rw,go= admin_notes.txt

# STEP 5: Clean-Up and Final Touches
rm admin_notes.txt
cd ..
mkdir backup
cp -r docs/. scripts/. backup/

# FINAL CHECKS
cd ~
tree project
ls -la project/docs project/scripts project/bin project/backup

# BONUS (OPTIONAL)
# The task says to use history and redirect it to commands_used.txt:
history > commands_used.txt
