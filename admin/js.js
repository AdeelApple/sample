    var tem = sessionStorage.msg;
    if (tem!==null&&tem!==undefined)
	{
		popmsg(tem);
		sessionStorage.removeItem('msg');
	}
    function popmsg(msg,tm)
    { 
    if (tm===undefined)   tm=2000;
     var el = document.createElement("div");
     el.setAttribute("class","popmsg");
     el.innerHTML = msg;
     setTimeout(function(){$(el).fadeOut(900, function() { $(this).remove(); })},tm);
     document.body.appendChild(el);

    }


    function del_fun(obj,tid,ttbl,tmcat,tsubcat,tmsg,trk,tfun){

        var img = $('<img />', { src: 'img/pixloading.gif',width: 50,height: 15}).appendTo($(obj).parent());
        $.post('ins.php',{id:tid,tbl:ttbl,mcat:tmcat,subcat:tsubcat,msg:tmsg,rank:trk,fun:tfun},function(msg){
         popmsg(msg); $(obj).parents().eq(1).remove(); $('.rinp').each(function(i, v){  v.value = parseInt(i)+1; });
         img.remove();  
         });
    }


    function del_item(obj,tid,ttbl,tmsg,tfun){       
        $.post('ins1.php',{id:tid,tbl:ttbl,msg:tmsg,fun:tfun},function(msg){ popmsg(msg); $(obj).parents().eq(1).hide(); });     
    }
    
    function pb_slide(obj,ttbl,tmsg){
        var ans = obj.checked ? '1':'0';
        $.post('ins.php',{id:obj.id,tbl:ttbl,mcat:'',subcat:'',msg:tmsg,val:ans,fun:'pub'},function(msg){ popmsg(msg); });
    }
    function set_bit(obj,ttbl,tid,tmsg){
        var ans = obj.checked ? '1':'0';
        $.post('ins1.php',{id:tid,tbl:ttbl,msg:tmsg,val:ans,fun:'set_bit'},function(msg){ popmsg(msg); });
    }

    
