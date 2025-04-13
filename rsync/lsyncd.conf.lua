settings {
    logfile    = "/var/log/lsyncd.log",
    statusFile = "/var/log/lsyncd.status",
    statusInterval = 10,
}

sync {
    default.rsync,
    source = "/home/rfahham/projetos/linux/rsync/origem",
    target = "/home/rfahham/projetos/linux/rsync/destino",
    -- delay = 1,
    -- maxDelays = 5,
    rsync = {
        archive = true,
        compress = true,
        verbose = true,
    }
}
