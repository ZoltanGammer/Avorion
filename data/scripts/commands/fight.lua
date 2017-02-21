function execute(sender, commandName, action, ...)
    Player(sender):addScriptOnce("cmd/fight.lua", action, ...)
    return 0, "", ""
end

function getDescription()
    return "Start a fight with something"
end

function getHelp()
    return "Start a fight with something. Usage:\n/fight"
end
