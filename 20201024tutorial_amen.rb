# Welcome to Sonic Pi
#sample :ambi_choir, rate: 1
#sleep 1
#sample :ambi_choir, rate: 0.5
sample :ambi_lunar_land
sleep 4

live_loop :guit do
  with_fx :echo, mix: 1, phase: 0.25 do
    sample :guit_em9, rate: 1
  end
  sample :guit_em9, rate: 1
  sleep 6
end

live_loop :cymbal do
  #sample :drum_cymbal_open, attack: 0.01, sustain: 0, release:0.1
  sleep 6
end

live_loop :amen do
  #sample :loop_amen, finish: 0.5#start: 0.5
  sample :loop_amen, start: 0.5, finish: 0.8, rate: -0.2, attack: 0.3, release: 1
  #sample :loop_amen, rate: 2, attack: 0.01, sustain: 0, release: 0.35
  sleep 6
  #sample :loop_amen, amp: 5, rate: 1, pan: 1
  #sleep 0.877
end

live_loop :fm, sync: :guit do
  tick
  with_fx :reverb, room: 1, mix: 0.75 do
    with_fx :distortion, distort: 0.75 do
      synth :fm, release:2.0, decay:0.4, depth:2, note: :c2
      sleep 6
    end
  end
end

