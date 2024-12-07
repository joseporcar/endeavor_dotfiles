#!/bin/bash
zapzap &
sleep 3;
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1;
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0;