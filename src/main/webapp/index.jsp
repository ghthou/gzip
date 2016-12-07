<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>HTTP 请求正文压缩 DEMO</title>
    <style>
        * {
            box-sizing: border-box;
        }

        p {
            margin: .8em 0;
            font-size: 14px;
        }

        input[type="submit"] {
            border: 1px solid #c1c1c1;
            border-radius: 4px;
            padding: 3px 10px;
            background-color: #fff;
        }

        textarea {
            border: 1px solid #ccc;
            resize: none;
            height: 240px;
            padding: 5px 10px;
        }

        .hide {
            display: none;
        }

        .alert {
            padding: 4px 10px;
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
            background-color: #fcf8e3;
            border: 1px solid #fbeed5;
            border-radius: 4px;
        }

        .alert-success {
            color: #468847;
            background-color: #dff0d8;
            border-color: #d6e9c6;
        }

        .alert-info {
            color: #3a87ad;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        .alert, textarea {
            width: 100%;
            max-width: 540px;
        }
    </style>
</head>
<body>
<form id="form" onsubmit="return false;">
    <h1>HTTP 请求正文压缩 DEMO </h1>
    <h3>该页面根据<a href="https://qgy18.com/request-compress/" target="_blank">https://qgy18.com/request-compress/</a>改写而成</h3>
    <p class="alert alert-success">输入要提交的标题：</p>
    <p><textarea style="height: 35px;" id="title">青玉案 元夕</textarea></p>
    <p class="alert alert-success">输入要提交的正文：</p>
    <p><textarea name="code" id="code">
　　青玉案 · 元夕①
　　[宋] 辛弃疾
　　东风夜放花千树②，
　　更吹落，星如雨③。
　　宝马雕车④香满路。
　　凤箫⑤声动，玉壶⑥光转，一夜鱼龙舞⑦。
　　蛾儿雪柳黄金缕⑧，
　　笑语盈盈⑨暗香⑩去。
　　众里寻他千百度，
　　蓦然回首，那人却在，（灯火）阑珊处。注：括号处两字缺，明代刊本作灯火。
【注释】
　　①元夕：夏历正月十五日为上元节，元宵节，此夜称元夕或元夜。
　　②花千树：花灯之多如千树开花。
　　③星如雨：指焰火纷纷，乱落如雨。 星，指焰火。形容满天的烟花。
　　④宝马雕车：豪华的马车。　
　　⑤凤箫：箫的名称。
　　⑥玉壶：比喻明月。
　　⑦鱼龙舞：指舞动鱼形、龙形的彩灯。（即舞鱼舞龙。是元宵节的表演节目）
　　⑧蛾儿、雪柳、黄金缕：皆古代妇女元宵节时头上佩戴的各种装饰品。这里指盛装的妇女。
　　⑨盈盈：声音轻盈悦耳，亦指仪态娇美的样子。
　　⑩暗香：本指花香，此指女性们身上散发出来的香气。
　　⑪他：泛指，当时就包括了 “她”
　　⑫千百度：千百遍。
　　⑬蓦然：突然，猛然。
　　⑭阑珊：零落稀疏的样子。
【译文】
　　东风拂过，数不清的花灯晃动着，仿佛催开了千树花，焰火纷乱，往下坠落，又像是空中的繁星被吹落了，宛若阵阵星雨。华丽的香车宝马在路上来来往往，各式各样的醉人香气弥漫着大街。凤萧那悦耳的音乐之声四处回荡，月亮在空中发出明亮的荧光，光华流转。热闹的夜晚里，鱼、龙形的彩灯在翻腾。美人的头上都戴着亮丽的饰物，身上穿着多彩的衣物，在人群中晃动。她们面带微笑，带着淡淡的香气从人面前经过。我千百次寻找她，都没看见她，不经意间一回头，却看见了她立在灯火零落处。
【解析】
　　这首词的上半阕写元宵之夜的盛况。
　　“东风夜放花千树，更吹落，星如雨”：一簇簇的礼花飞向天空，然后像星雨一样散落下来。一开始就把人带进 “火树银花” 的节日狂欢之中。
　　“宝马雕车香满路”：达官显贵也携带家眷出门观灯。跟下句的 “鱼龙舞” 构成万民同欢的景象。
　　“凤箫声动，玉壶光转，一夜鱼龙舞”：“凤箫” 是排箫一类的吹奏乐器，这里泛指音乐；“玉壶” 指明月；“鱼龙” 是灯笼的形状。这句是说，在月华下，灯火辉煌，沉浸在节日里的人通宵达旦载歌载舞。
　　下阕仍然在写 “元夕” 的欢乐，只不过上阕写的是整个场面，下阕写一个具体的人，通过他一波三折的感情起伏，把个人的欢乐自然地溶进了节日的欢乐之中。
　　“蛾儿雪柳黄金缕，笑语盈盈暗香去”：这一句写的是元宵观灯的女人，她们穿着美丽的衣服，戴着漂亮的手饰，欢天喜地朝前奔去，所过之处，阵阵暗香随风飘来。“雪柳” 是玉簪之类的头饰。
　　“众里寻她千百度”：（这人）对着众多走过的女人一一辨认（但没有一个是他所等待的意中人）。
　　“蓦然回首，那人却在灯火阑珊处”：偶一回头，却发现自己的心上人站立在昏黑的幽暗之处。
　　“灯火阑珊” 勿作 “良夜将逝” 解，“灯火阑珊” 虽然是灯火渐渐散尽的意思，但这儿说的是天空飘洒下来的礼花，快接近地面时早已熄灭散尽，所以即使头上有流光溢彩，站立的地方却是昏暗的。
　　这首词大家耳熟能详，特别是最后一句 “蓦然回首，那人却在灯火阑珊处” 已是久吟不衰的名句。整首词在最精彩的地方戛然而止，却给读者留下无比宽阔的想象空间。经过等待、寻找、焦灼、失望之后再突然发现自己的意中人原来就在身后，那种从天而降的惊喜谁也想象得出来。
　　词中在 “灯火阑珊” 的 “那人”，不用说是一个青春妙龄的少女，她在词的最后才于模糊的昏暗之处露了一下脸。然而读者感觉得出，这是一个聪明活泼而又有几分淘气的女孩子。等她的人在明处，她在暗处，也许她早就发现他了，但她却不急着与他相见，先考验一下他的耐心，先看看他着急的样子，然后悄然无声地跟在他后头，等到他快要崩溃的时候才给他一份意外的惊喜。
　　那个青年男子呢，元宵节热闹的盛况他视若未见、毫不在乎，他只关心那些花枝召展从他面前飘然而过的少女，急切地想从中寻出那张可爱的熟悉的面孔。假若寻不到自己心爱的人，那么整个元宵佳节将黯然失色，所有的热闹只会让他倍感失落倍感孤单。只有与他望眼欲穿的 “那人” 相见，整个欢乐的场面才会被激活，才会真正享受节日带来的双倍的欣狂。
　　同时，还有一种说法认为：站在灯火阑珊处的那个人，是对他自己的一种写照。根据历史背景可知，当时的他不受重用，文韬武略施展不出，心中怀着一种无比惆怅之感，所以只能在一旁孤芳自赏。也就像站在热闹氛围之外的那个人一样，给人一种清高的感觉，体现了受冷落后不肯同流合污的高士之风。
　　作为一首婉约词，这首《青玉案》与北宋婉约派大家晏殊和柳永相比，在艺术成就上毫不逊色。词从开头起 “东风夜放花千树”，就极力渲染元宵佳节的热闹景象：满城灯火，满街游人，火树银花，通宵歌舞。然而作者的意图不在写景，而是为了反衬 “灯火阑珊处” 的那个人的与众不同。此词描绘出元宵佳节通宵灯火的热闹场景，梁启超谓 “自怜幽独，伤心人别有怀抱。” 认为此词有寄托，可谓知音。上片写元夕之夜灯火辉煌，游人如云的热闹场面，下片写不慕荣华，甘守寂寞的一位美人形象。美人形象便是寄托着作者理想人格的化身。“众里寻她千百度，蓦然回首，那人却在，灯火阑珊处。” 王国维把这种境界称之为成大事业者，大学问者的第三种境界，确是大学问者的真知灼见。
　　全文主要运用了反衬的表现手法，表达出作者不与世俗同流合污的追求（词人对理想的追求的执着和艰辛）。
【鉴赏】
　　古代词人写上元灯节的词，不计其数，辛弃疾的这一首，却没有人认为可有可无，因此也可以称作是豪杰了。然而究其实际，上阕除了渲染一片热闹的盛况外，并无什么独特之处。作者把火树写成与固定的灯彩，把 “星雨” 写成流动的烟火。若说好，就好在想象：东风还未催开百花，却先吹放了元宵节的火树银花。它不但吹开地上的灯花，而且还从天上吹落了如雨的彩星——燃放的烟火，先冲上云霄，而后自空中而落，好似陨星雨。“花千树” 描绘五光十色的彩灯缀满街巷，好像一夜之间被春风吹开的千树繁花一样。这是化用唐朝诗人岑参的 “忽如一夜春风来，千树万树梨花开”。然后写车马、鼓乐、灯月交辉的人间仙境——“玉壶”，写那民间艺人们载歌载舞、鱼龙漫衍的 “社火” 百戏，极为繁华热闹，令人目不暇接。其间的 “宝” 也，“雕” 也 “凤” 也，“玉” 也，种种丽字，只是为了给那灯宵的气氛来传神来写境，大概那境界本非笔墨所能传写，幸亏还有这些美好的字眼，聊为助意而已。这也是对词中的女主人公言外的赞美 。
　　下阕，专门写人。作者先从头上写起：这些游女们，一个个雾鬓云鬟，戴满了元宵特有的闹蛾儿、雪柳，这些盛装的游女们，行走过程中不停地说笑，在她们走后，只有衣香还在暗中飘散。这些丽者，都非作者意中关切之人，在百千群中只寻找一个——却总是踪影难觅，已经是没有什么希望了。…… 忽然，眼睛一亮，在那一角残灯旁边，分明看见了，是她！是她！没有错，她原来在这冷落的地方，还未归去，似有所待！发现那人的一瞬间，是人生精神的凝结和升华，是悲喜莫名的感激铭篆，词人竟有如此本领，竟把它变成了笔痕墨影，永志弗灭！—读到末幅煞拍，才恍然大悟：那上阕的灯、月、烟火、笙笛、社舞、交织成的元夕欢腾，那下阕的惹人眼花缭乱的一队队的丽人群女，原来都只是为了那一个意中之人而设，而且，倘若无此人，那一切又有什么意义与趣味呢！
　　此词原不可讲，一讲便成画蛇，破坏了那万金无价的人生幸福而又辛酸一瞬的美好境界。然而画蛇既成，还须添足：学文者莫忘留意，上阕临末，已出 “一夜啊！” 二字，这是何故？盖早已为寻她千百度说明了多少时光的苦心痴意，所以到了下阕而出 “灯火阑珊”，方才前后呼应，笔墨之细，文心之苦，至矣尽矣。可叹世之评者动辄谓稼轩 “豪放”，“豪放”，好像将他看作一个粗人壮士之流，岂不是贻误学人吗？
　　王国维《人间词话》曾举此词，以为人之成大事业者，必皆经历三个境界，而稼轩此词的境界为第三即终最高境界。此特借词喻事，与文学赏析并无交涉，王先生早已先自表明，吾人在此无劳纠葛。
　　从词调来讲，《青玉案》十分别致，它原是双调，上下阕相同，只是上阕第二句变成三字一断的叠句，跌宕生姿。下阕则无此断叠，一片三个七字排句，可排比，可变幻，随词人的心意，但排句之势是一气呵成的，单单等到排比完了，才逼出煞拍的警策句。</textarea>
    </p>
    <h4>文字来源于<a href="http://www.gushiwen.org/GuShiWen_2c388e9f3d.aspx" target="_blank">http://www.gushiwen.org/GuShiWen_2c388e9f3d.aspx</a></h4>
    <p>
        <input class="btn" type="submit" value="提交" id="submit">
    </p>
    <p>----</p>
    <div id="result" class="hide">
        <p></p>
    </div>
    <p class="alert alert-info">服务端收到的数据：</p>
    <p><textarea name="code" id="code2"></textarea></p>
    <p>----</p>
    <p>create by <a href="https://imququ.com">imququ.com</a> &copy; 2016</p>
</form>
<script src="jquery-2.2.4.min.js"></script>
<script src="pako_deflate.min.js"></script>
<script>
    document.querySelector('#submit').addEventListener('click', function (e) {
        e.preventDefault();

        var elCode = document.querySelector('#code');
        var titleTxa = document.querySelector('#title');
        var elCode2 = document.querySelector('#code2');
        var elHide = document.querySelector('.hide');
        var elResult = document.querySelector('#result p');

        var title = titleTxa.value;
        var content = elCode.value;

        if (!title) {
            alert('请输入标题！');
            return;
        }
        if (!content) {
            alert('请输入内容！');
            return;
        }

        var params = encodeURIComponent(JSON.stringify({
            title: title,
            content: content
        }));
        var compressBeginLen = params.length;
        if (compressBeginLen > 1000) {
            //对 JSON 字符串进行压缩
            // pako.gzip(params) 默认返回一个 Uint8Array 对象,如果此时使用 Ajax 进行请求,参数会以数组的形式进行发送
            // 为了解决该问题,添加 {to: "string"} 参数,返回一个二进制的字符串
            params = pako.gzip(params, {to: "string"});
        }

        elHide && (elHide.className = '');
        elResult.innerHTML = '原始大小：' + compressBeginLen + '，压缩后实际传输大小：' + params.length + '，节省：' + ((compressBeginLen - params.length) / compressBeginLen * 100).toFixed(2) + '%。'

        elCode2.value = '数据提交中...';

        $.ajax({
            url: "/gzip",
            data: params,
            dataType: "text",
            type: "post",
            headers: {
                //如果 compressBeginLen 大于 1000,标记此次请求的参数使用了 gzip 压缩
                "Content-Encoding": compressBeginLen > 1000 ? "gzip" : ""
            },
            success: function (data) {
                elCode2.value = data;
            }
        })
    }, false);
</script>
</body>
</html>