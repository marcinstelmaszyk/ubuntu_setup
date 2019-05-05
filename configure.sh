# Install Git
sudo apt update
sudo apt install git


echo "## Build HSTR on Ubuntu"
# Clone repository
git clone https://github.com/dvorka/hstr.git
# Install dependencies
sudo apt install automake gcc make libncursesw5-dev libreadline-dev
# Create build files
cd hstr/build/tarball && ./tarball-automake.sh && cd ../..
# Build and install HSTR
./configure && make && make install
cd ..


echo "## Copy DIRB repository"
git clone https://github.com/icyfork/dirb.git


echo "## Copy DIRB executable to ~/.bashDirB"
cp dirb/dirb.sh ~/.bashDirB


echo "## Append commands to ~/.bashrc"
# Don't append if already done
found_entry=`(grep "DIRB" ~/.bashrc | wc -c)`
if [ $found_entry -eq 0 ]; then
    cat bashrc >> ~/.bashrc
fi


echo "## Cleaning directory"
rm -rf dirb/ hstr/
