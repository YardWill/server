$.get('/waibao/read', (res) => {
    let tmp = '';
    res.map((e) => {
        tmp += `<tr><td>${e.id}</td><td><a href="${e.href}">${e.href}</a></td></tr>`;
    });
    console.log(tmp);
    $('#table').append(tmp);
});

$('#empty').on('click', () => {
    $.get('/waibao/empty', (res) => {
        alert(res);
        window.location.reload();
    });
});

$('#get').on('click', () => {
    $.get('/waibao/getexl', (res) => {
        if (res.success) {
            alert('正在爬取中，请勿重复点击，刷新可看到实时数据。');
        }
    });
});
