for i in 1:1000
    open("file.txt", "w") do io
        print(io, i)    
        flush(io)
        run(`git add file.txt`)
        run(`git commit -m "update $i"`)
    end
end