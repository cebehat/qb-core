-- this is a template, meant as an example of how a job object should be structured

QBShared = {}
QBShared.Jobs = {
    police = {
        label = 'Law Enforcement', -- the text shown ingame when outputting job status
        type = 'leo', -- id for the type of job, used to group different jobs together
        defaultDuty = true, -- bool value determining if the player will be set as on duty by default
        offDutyPay = false, -- bool value determining if the player will get paychecks even while off duty
        grades = { -- the different ranks of the job
            ['0'] = { name = 'Recruit', payment = 50 },
            ['1'] = { name = 'Officer', payment = 75 },
            ['2'] = { name = 'Sergeant', payment = 100 },
			['3'] = { name = 'Lieutenant', payment = 125 },
			['4'] = { name = 'Chief', isboss = true, payment = 150 },
        },
        locations = {
            [0] = { coords = vector3(0,0,0), blipType = 1, markerType = 0, label = ''},
        }
    }
}