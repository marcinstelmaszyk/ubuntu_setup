## Install Git #####
sudo apt update
sudo apt install git

## Add aliases stored in the file 'gitconfig' to Git's .gitconfig ########
alias_section_present=`(grep "\[alias\]" ~/.gitconfig | wc -c)`
if [ $alias_section_present -eq 0 ]; then
    cat gitconfig >> ~/.gitconfig
fi

## Build HSTR on Ubuntu ###########################################
# Clone repository
git clone https://github.com/dvorka/hstr.git
# Install dependencies
sudo apt install automake gcc make libncursesw5-dev libreadline-dev
# Create build files
cd hstr/build/tarball && ./tarball-automake.sh && cd ../..
# Build and install HSTR
./configure && make && make install
cd ..

## Copy DIRB repository #####################
git clone https://github.com/icyfork/dirb.git

## Copy DIRB executable to ~/.bashDirB ##
cp dirb/dirb.sh ~/.bashDirB

## Append commands stored in the file 'bashrc' to ~/.bashrc ##
## Don't append if already done
DIRB_word_found=`(grep "DIRB" ~/.bashrc | wc -c)`
if [ $DIRB_word_found -eq 0 ]; then
    cat bashrc >> ~/.bashrc
fi

## Cleaning directory ##
rm -rf dirb/ hstr/
