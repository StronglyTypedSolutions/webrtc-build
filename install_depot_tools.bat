echo Cloning depot tools to %1...
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git %1

pushd %1

echo Checking out specific revision...
git reset --hard 298f2cf820dfe45dff53b0e41b11441dbf72b48c

set DEPOT_TOOLS_UPDATE=0

echo Setting up depot_tools...
gclient

popd
