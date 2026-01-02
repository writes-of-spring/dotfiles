function greeting
    set -l phrases "You got this!" \
                   "Fuck em up" \
                   "Don't do it." 

    set -l emojis "🐟" "👻"
    set -l num_phrases (count $phrases)
    set -l random_index (random 1 $num_phrases)
    set -l random_emoji_index (random 1 2)

    echo $phrases[$random_index] $emojis[$random_emoji_index]
end