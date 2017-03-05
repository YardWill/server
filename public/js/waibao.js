$.get('http://121.42.42.155:8888/waibao/read', (res) => {
    let tmp = '';
    res.map((e) => {
        // console.log(e);
        const number = e.xingjiabi.replace(/[^0-9]/ig, '');
        const a = `${number === '' ? '暂无性价比数据' : number.substr(0, 2) + '.' + number.substr(2) + '%'}`;
        tmp += `<tr><td>${e.id}</td><td><a href="${e.href}">${e.href}</a></td><td>${e.goumai_money}</td><td>${e.zhesuan_money}</td><td>${e.zhejia}</td><td>${a}</td></tr>`;
    })
    console.log(tmp);
    $('#table').append(tmp);
})

$('#empty').on('click', () => {
    $.get('http://121.42.42.155:8888/waibao/empty', (res) => {
        alert(res);
        window.location.reload();
    })
})
