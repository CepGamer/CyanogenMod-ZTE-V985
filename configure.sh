apt-get install bison build-essential curl flex git gnupg gperf libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 libxml2-utils lzop openjdk-7-jdk openjdk-7-jre pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev
mkdir -p ~/bin
mkdir -p ~/android/system
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

cd ~/android/system
repo init -u https://github.com/CyanogenMod/android.git -b cm-12.1
repo sync

cd ~/android/system/vendor/cm
./get-prebuilts

