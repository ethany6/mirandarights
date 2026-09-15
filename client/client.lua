RegisterCommand('miranda', function()
    local department = MirandaConfig.Departments[MirandaConfig.ActiveDepartment]

    if not department then
        print(('mirandarights: unknown department "%s"'):format(MirandaConfig.ActiveDepartment))
        return
    end

    SendNUIMessage({
        action = 'show',
        department = department,
        rights = MirandaConfig.Rights,
    })

    exports['rpemotes']:Execute('clipboard', 'Emotes')
end, false)

RegisterCommand('cancel_emote_backspace', function()
    exports['rpemotes']:EmoteCancel()
    SendNUIMessage({
        action = 'hide'
    })
end, false)

RegisterKeyMapping(
    'cancel_emote_backspace',
    'Cancel current emote',
    'keyboard',
    'BACK'
)