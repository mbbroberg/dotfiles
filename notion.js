if(prop("Good 'Til") >= now(), "✅ Good for now!", if(prop("Due By") > now(), "⛔️ Overdue!!!", "🟡 Due Soon"))
    




if( 
    ,
    "✅ Good for now!",
    if(
        dateBetween(prop("Due By"), now(), "days") > -5,
        "⛔️ Overdue!!!",
        "🟡 Due soon"
    )
)



// Working formula: 
if (prop("Due By") <= now(), "⛔️ Overdue!!!", "✅ Good for now!")