all:
	love ./

run:
	love ./

build:
	zip -9 -q -r dist/game.love ./
