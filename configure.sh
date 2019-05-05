
echo "## Build HSTR on Ubuntu"
# Clone repository
git clone https://github.com/dvorka/hstr.git
# Install dependencies
sudo apt install automake gcc make libncursesw5-dev libreadline-dev
# Create build files
cd ./build/tarball && ./tarball-automake.sh && cd ../..
# Build and install HSTR
./configure && make && make install


echo "## Copy DIRB repository"
git clone https://github.com/icyfork/dirb.git


echo "## Copy DIRB executable to ~/.bashDirB"
cp dirb/dirb.sh ~/.bashDirB


echo "## Append commands to ~/.bashrc"
cat bashrc >> ~/.bashrc


echo "## Cleaning directory"
rm -rf dirb/

