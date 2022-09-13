#!/bin/bash
build_dir=./build

rm -rf $build_dir
mkdir $build_dir
cmake_file=./Cmakelists.txt
excutable_list=()
suffix=".cpp"


if [ ! -f "$cmake_file" ]; then
    touch $cmake_file
fi

echo '''
project(cpp_wheel)

set(CMAKE_CXX_STANDARD 17)
'''  > $cmake_file

for file in *.cpp;
do
name=${file/%$suffix}
excutable_list+=($name)
echo "add_executable($name $name.cpp)" >> ./Cmakelists.txt
done


if [ ! -d "$build_dir" ]; then
    mkdir $build_dir
fi


cd $build_dir && cmake .. && make $1

if [ $# -lt 1 ]; then
    echo @@ ./run.sh will compiler all the programs
    echo @@ to compile '&' run specific program: 
    echo @@ usage: run.sh "[any program name in (${excutable_list[@]})]"
    exit 1
fi

./$1

