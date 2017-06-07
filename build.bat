set GOPATH=%CD%;%GOPATH%
echo %GOPATH%
mkdir bin

go get -u github.com/cihub/seelog
go get -u github.com/robfig/config
go get -u github.com/PuerkitoBio/purell
go get -u github.com/clarkduvall/hyperloglog
go get -u github.com/PuerkitoBio/goquery
go get -u github.com/syndtr/goleveldb/leveldb
go get -u github.com/jmoiron/jsonq
go get -u github.com/gorilla/websocket
go get -u github.com/boltdb/bolt/...
go get -u github.com/alash3al/goemitter
go get -u github.com/bkaradzic/go-lz4
go get -u github.com/elgs/gojq
go get -u github.com/kardianos/osext
go get -u github.com/zeebo/sbloom
go get -u github.com/asdine/storm
go get -u github.com/julienschmidt/httprouter
go get -u github.com/rs/xid
go get -u github.com/seiflotfy/cuckoofilter
go get -u github.com/hashicorp/raft
go get -u github.com/hashicorp/raft-boltdb
go get -u github.com/jaytaylor/html2text
go get -u github.com/asdine/storm/codec/protobuf
go get -u github.com/ryanuber/go-glob
go get -u github.com/gorilla/sessions
go get -u github.com/mattn/go-sqlite3
go get -u github.com/jinzhu/gorm
go get -u github.com/stretchr/testify/assert
go get -u github.com/spf13/viper
go get -u -t github.com/RoaringBitmap/roaring
go get -u github.com/elastic/go-ucfg
go get -u github.com/blevesearch/bleve


go get -u github.com/infinitbyte/esc
(cd static&& esc -ignore="static.go|build_static.sh|.DS_Store" -o static.go -pkg static ../static )

echo -e "package env\nconst LastCommitLog  =\""`git log -1 --pretty=format:"%h, %ad, %an, %s"` "\"\nconst BuildDate  =\"`date`\"" > ../core/env/commit_log.go


go build -o bin/gopa.exe