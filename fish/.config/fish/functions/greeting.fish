function greeting
    set -l phrases "You got this!" \
                   "Fuck em up" \
                   "Don't do it." 

    set -l num_phrases (count $phrases)
    set -l random_index (random 1 $num_phrases)

    echo $phrases[$random_index] 🐟
end