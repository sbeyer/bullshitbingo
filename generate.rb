#!/usr/bin/env ruby

ThatMany = 150
List = File.readlines('liste').map do |line| line.chomp! end

print <<EOF
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html version="-//W3C//DTD XHTML 1.1//EN" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
 <head>
  <meta http-equiv="content-type" content="application/xhtml+xml;charset=utf-8" />
  <link rel="stylesheet" media="print" href="print.css" />
  <link rel="stylesheet" media="screen" href="screen.css" />
  <title>Bullshit-Bingo für den LPT 12.1 der PIRATEN Thüringen</title>
 </head>
 <body>
EOF

ThatMany.times do
	print <<EOF
  <h1>Bullshit-Bingo für den LPT 12.1 der PIRATEN Thüringen</h1>
  <p><strong>Die Regeln:</strong>
   Immer wenn du eine der Wendungen aus dem Munde eines Piraten hörst, dann kreuze das entsprechende Kästchen an. Wenn eine Reihe, Spalte oder Diagonale vollständig angekreuzt ist, darfst du dich still freuen und dir ein Bier kaufen.</p>
  <table>
EOF
	List.shuffle.shift(25).each_with_index do |word, i|
		puts "   <tr>" if (i % 5 == 0)
		puts "    <td>#{word}</td>"
		puts "   </tr>" if (i % 5 == 4)
	end
	puts "  </table>"
end

print <<EOF
 </body>
</html>
EOF
