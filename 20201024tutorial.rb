# Welcome to Sonic Pi


sample :ambi_lunar_land
sleep 4


live_loop :guit do
  with_fx :echo, mix: 0.3, phase: 0.25 do
    sample :guit_em9, rate: 1.0
  end
  sample :guit_em9, rate: -1.0
  sleep 8
end


live_loop :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 8
end

live_loop :fm, sync: :guit do
  tick
  with_fx :reverb, room: 1, mix: 0.75 do
    with_fx :distortion, distort: 0.75 do
      synth :fm, release: 2.0, decay: 0.4, depth: 2, note: :c2
      sleep 8
    end
  end
end

#sleep 4
#sample :ambi_choir, rate: 0.5
