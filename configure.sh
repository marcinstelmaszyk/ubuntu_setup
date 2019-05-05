
# Install HSTR


echo "Copy DIRB repository"
git clone https://github.com/icyfork/dirb.git

echo "Copy DIRB executable to ~/.bashDirB"
cp dirb/dirb.sh ~/.bashDirB

echo "Cleaning directory"
rm -rf dirb/
