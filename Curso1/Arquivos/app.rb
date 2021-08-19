if ARGV.size > 0
    obj = File.open(ARGV[0],'r')  
else    
    obj = File.open('texto1.txt','r') 
end 
arquivo = "texto2.txt"
obj2 = File.open(arquivo, 'r')
while 1
    line = obj.gets
    line2 = obj2.gets
    if !line && !line2
        break
    end
    puts line
    puts line2
end