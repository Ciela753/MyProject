/**
 * reply.js
 * 댓글 구현, 클로저를 이용한 모듈
 */
console.log("project module")

var projectService = (function() {
    function add(reply, callback, error) {
        console.log("reply.add()");

        $.ajax({
            type : "post",
            url : "/projects/new",
            data : JSON.stringify(reply),
            contentType : "application/json; charset=utf-8",
            success : function(data) {
                if(callback)
                callback(data);
            },
            error : function(xhr, stat, er) {
                if(error) {
                    error(er);
                }
            }
        })
    }

    function getList(param, callback, error) {
        console.log("reply.getList()")
        var bno = param.bno;
        //var amount = param.amount || 10;
        //앞이 참이면 앞의것을 취득
        var amount= param.amount ? param.amount : 10;
        var lastRno = param.lastRno ? param.lastRno : 0;
        var url = '/replies/' + bno + "/"+ amount +"/"+ lastRno;

        $.getJSON(url, function(data) {
            if(callback)
            callback(data);
        });
    }

function remove(rno, callback, error) {
    console.log("reply.remove()");
    var url ='/replies/'+rno;

    $.ajax(url, {
        type : "delete",
    }).done(function(data) {
        if(callback)
        callback(data);
    })
}

function modify(reply, callback, error) {
    console.log("reply.modify()");
    var url = '/replies/' + reply.rno;

    $.ajax(url, {
        type : "put",
        data : JSON.stringify(reply),
        contentType : "application/json; charset=utf-8",
        success : function(data) {
            if(callback)
            callback(data);
        }        
    })
}

function get(bno, callback, error) {
    var url ='/board/detailsTest/'+bno;
    $.getJSON(url, function(data) {
        if(callback)
        callback(data);
    });
}

function displayTime(timeValue) {
    return moment().diff(moment(timeValue), 'days') < 1 ? moment(timeValue).format('HH:mm:ss') : moment(timeValue).format('YY/MM/DD');
}

return {
        add:add,
        getList:getList,
        remove:remove,
        modify:modify,
        get:get,
        displayTime:displayTime
    }
})();
