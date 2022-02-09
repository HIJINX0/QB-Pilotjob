# QB-Pilotjob
Super simple QB-Pilotjob with Paychecks, easy to use and customise.

 ----------------------------
    Made by HIJINX#0001     
https://redemption-rp.tebex.io/
https://discord.gg/PNzWQ2hMcy -- For Support
 ---------------------------- 
Add this into your qb-core/shared/job.lua     
    
    ['planepilot'] = {
        label = 'Delivery',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Pilot',
                payment = 250
            },
        },
    },
--------------------------------------------------------------------
                   The next step is optional.                       
--------------------------------------------------------------------

You can also add this into the qb-cityhall/server/main.lua
Search for:

    Local AvailableJobs = {

On a new line put:

    "planepilot",
--------------------------------------------------------------------

Add this to the qb-cityhall/html/index.html
Search for:

    <div class="cityhall-job-page">

On A new line put:

    <div class="job-page-block" data-job="planepilot"><p>Plane Pilot</p></div>

----------------------------------------------------------------------------
 Make sure to look at the HIJINX-Pilotjob/config.lua to set/remove dropoffs
----------------------------------------------------------------------------



 ----------------------------
    Made by HIJINX#0001     
https://redemption-rp.tebex.io/
https://discord.gg/PNzWQ2hMcy -- For Support
 ---------------------------- 
