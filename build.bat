set GOPATH=%CD%;%GOPATH%
echo %GOPATH%
mkdir bin


(cd static&& esc -ignore="static.go|build_static.sh|.DS_Store" -o static.go -pkg static ../static )

echo -e "package env\nconst LastCommitLog  =\""`git log -1 --pretty=format:"%h, %ad, %an, %s"` "\"\nconst BuildDate  =\"`date`\"" > ../core/env/commit_log.go

cd ..
go build -o bin/gopa.exe