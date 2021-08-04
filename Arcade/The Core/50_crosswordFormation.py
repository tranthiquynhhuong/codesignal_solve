# Python 3

# You're a crossword fanatic, and have finally decided to try and create your own. However, you also love symmetry and good design, so you come up with a set of rules they should follow:

# the crossword must contain exactly four words;
# these four words should form four pairwise intersections;
# all words must be written either left-to-right or top-to-bottom;
# the area of the rectangle formed by empty cells inside the intersections isn't equal to zero.
# Given 4 words, find the number of ways to make a crossword following the above-described rules. Note that two crosswords which differ by rotation are considered different.

# Example

# For words = ["crossword", "square", "formation", "something"], the output should be
# crosswordFormation(words) = 6.

# The six crosswords can be formed as shown below:

#   f                         f                             f
#   o                     c r o s s w o r d     c r o s s w o r d
# c r o s s w o r d           r   o                   q     r
#   m   q                     m   m                   u     m
#   a   u            ;  s q u a r e          ;        a     a
#   t   a                     t   t                   r     t
#   i   r                     i   h             s o m e t h i n g
# s o m e t h i n g           o   i                         o
#   n                         n   n                         n
#                                 g                               
                                                              
#     c         s               s                                      
# f o r m a t i o n       c     q               c         s          
#     o         m         r     u               r         o      
#     s q u a r e       f o r m a t i o n       o         m            
#     s         t    ;    s     r            ;  s q u a r e                  
#     w         h         s o m e t h i n g     s         t         
#     o         i         w                     w         h     
#     r         n         o                   f o r m a t i o n            
#     d         g         r                     r         n         
#                         d                     d         g             


# Input/Output

# [execution time limit] 4 seconds (py3)

# [input] array.string words

# An array of distinct strings, the words you need to use in your crossword.

# Guaranteed constraints:
# words.length = 4,
# 3 ≤ words[i].length < 15.

# [output] integer

# The number of ways to make a correct crossword of the desired formation.

def crosswordFormation(words):
    count = 0
    for i in range(4):
        ta = words[i]
        al = len(ta)
        for a in range(al - 2):
            for j in range(4):
                if j == i:
                    continue
                tb = words[j]
                jl = len(tb)
                b = tb.find(ta[a], 0, -2)
                while b != -1:
                    for b2 in range(b + 2, jl):
                        for k in range(4):
                            if k == j or k == i:
                                continue
                            l = 6 - k - i - j
                            bd = b2 - b
                            td = words[l]
                            dl = len(td)
                            if bd >= dl:
                                continue
                            tc = words[k]
                            cl = len(tc)
                            c = tc.find(tb[b2], 0, -2)
                            while c != -1:
                                if tb[b2] != tc[c]:
                                    continue
                                for c2 in range(c + 2, cl):
                                    for d in range(dl - 1, bd - 1, -1):
                                        if tc[c2] != td[d]:
                                            continue
                                        a2 = a + c2 - c
                                        if a2 >= al:
                                            break
                                        if ta[a2] == td[d - bd]:
                                            count += 1
                                c = tc.find(tb[b2], c + 1, -2)
                    b = tb.find(ta[a], b + 1, -2)
    return count

# Please give me 1 STAR if you feel USEFUL >.<