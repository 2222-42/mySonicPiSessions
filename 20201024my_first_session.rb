# Welcome to Sonic Pi
#sample :ambi_choir, rate: 1
#sleep 1
#sample :ambi_choir, rate: 0.5
#sample :ambi_lunar_land
#sleep 4


live_loop :tb_cutoff do
  use_synth :tb303
  #play choose([66, 69, 72]), release: 0.1, cutoff: rrand(60, 120), rate: 1.5
  sleep 0.86
end

live_loop :amen do
  #sample :loop_amen, finish: 0.5#start: 0.5
  #sample :loop_amen, start: 0.5, finish: 0.8, attack: 0.3, release: 1
  #sample :loop_amen, rate: 2, attack: 0.01, sustain: 0, release: 0.35
  #sleep 0.877
  #sample :loop_amen, amp: 5, rate: 0.5
  sleep 3.2
end

#sleep 4
sample :ambi_choir, rate: 0.5