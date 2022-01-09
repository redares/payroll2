function calculateEngineerSalary() {
    let baseSalary = $("#EngineerBaseSalary");
    let bonus = $("#EngineerBonus");
    let salary = $("#EngineerSalary");

    let data = {
        baseSalary: baseSalary,
        bonus: bonus
    };

    $.ajax({
        type: "POST",
        url: "calculateEngineerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function(response) {
            salary.text(response);
        },
        error: function(e) {
            alert("Error! Please try again");
        }
    });
}


function calculateWorkerSalary() {
    let rate = $("#WorkerRate");
    let hours = $("#WorkerHours");
    let oHours = $("#WorkerOvertimeHours");
    let salary = $("#WorkerSalary");

    let data = {
        rate: rate,
        hours: hours,
        oHours: oHours
    };

    $.ajax({
        type: "POST",
        url: "calculateWorkerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function (response) {
            salary.text(response);
        },
        error: function (e) {
            alert("Error! Please try again");
        }
    });
}


function calculateSalesManagerSalary() {
    let baseSalary = $("#SalesManagerBaseSalary");
    let bonus = $("#SalesManagerBonus");
    let tCount = $("#SalesManagerTransactionsCount");
    let salary = $("#SalesManagerSalary");

    let data = {
        baseSalary: baseSalary,
        bonus: bonus,
        tCount: tCount
    };

    $.ajax({
        type: "POST",
        url: "calculateSalesManagerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function (response) {
            salary.text(response);
        },
        error: function (e) {
            alert("Error! Please try again");
        }
    });
}


