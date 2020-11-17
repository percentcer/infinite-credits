pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
-- game infinite credits
-- by %cer
scroll = 0
buf = {}

function _draw()
	cls()
	li=0
	for l in all(buf) do
		if(buf[li] and #buf[li]==0) then
			color(9)
		else
			color(7)
		end
		print(l,hcntr(l),(li*8)-scroll)
		li = li+1
	end
end

function _init()
	for i=1,16 do
		add(buf, '')
	end
	add(buf, 'cast')
	addperson()
end

function _update()
	scroll = (scroll + .5) % 8
	if(scroll==0)then
		deli(buf,1)
		if(#buf<17)then
			if(rnd() < .1)then
				add(buf,'')
				ni = flr(rnd(#nouns))+1
				ji = flr(rnd(#jobs))+1
				add(buf,nouns[ni]..' '..jobs[ji])
			end
			addperson()
		end
	end
end

function hcntr(s)
	return 64-#s*2
end

function addperson()
	fni = flr(rnd(#fnames))+1
	lni = flr(rnd(#fnames))+1
	comb = fnames[fni]..' '..fnames[lni]
	add(buf,comb)
end
-->8
fnames = {
'handy',
'parthenia',
'okey',
'erie',
'ab',
'dove',
'commodore',
'lovey',
'spurgeon',
'kathern',
'fount',
'icy',
'squire',
'texie',
'bliss',
'lockie',
'boss',
'indiana',
'starling',
'easter',
'lawyer',
'pinkey',
'manley',
'chestina',
'little',
'odell',
'orange',
'leafy',
'flem',
'ova',
'toy',
'sister',
'josephine',
'clifford',
'henery',
'florance',
'pleasant',
'tiny',
'fate',
'cuba',
'gorge',
'electa',
'joesph',
'buelah',
'rolla',
'bama',
'ples',
'capitola',
'council',
'pearly',
'son',
'wava',
'virgle',
'carry',
'geo',
'arizona',
'lillian',
'lilyan',
'murl',
'flonnie',
'lemon',
'classie',
'wash',
'lavada',
'christ',
'almeta',
'louise',
'louis',
'stephan',
'vella',
'mayo',
'dimple',
'green',
'golden',
'elza',
'loyce',
'curley',
'ivory',
'metro',
'louvenia',
'berry',
'merry',
'reno',
'glendora',
'author',
'gaynell',
'burley',
'dorathy',
'dorman',
'mardell',
'buddie',
'bobbye',
'wardell',
'willodean',
'estel',
'gregoria',
'gust',
'hildred',
'vester',
'jettie',
'otho',
'charlsie',
'early',
'ferne',
'dock',
'jack',
}

jobs = {
'handlers',
'regulators',
'diviners',
'supplicants',
'hunters',
'mediators',
'provocateurs',
'dilettantes'
}

nouns = {
'beast',
'talent',
'electrical',
'key',
'stage',
'script',
'lighting',
'dialogue',
'chorus',
'vertiae',
'production',
'labor',
'music',
}
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700066666660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000600000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000600000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700660000660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000006600600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
