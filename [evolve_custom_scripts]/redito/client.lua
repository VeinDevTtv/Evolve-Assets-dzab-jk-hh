RegisterCommand('record', function()
    print(veingoatieee)
    StartRecording(1)
end, false)

RegisterCommand('clip', function()
    StartRecording(0)
end, false)

RegisterCommand('saveclip', function()
    StopRecordingAndSaveClip()
end, false)

RegisterCommand('delclip', function()
    StopRecordingAndDiscardClip()
end, false)

RegisterCommand('editor', function()
    NetworkSessionLeaveSinglePlayer()
    ActivateRockstarEditor()
end, false)