// const tmp = (data)=> {
//     return `
//     <table>
//     <tr></tr>
//     ${data.map((e) = {
//         return `<tr></tr>`
//     })}
//     </table>
//     `;
// };

$.get('http://localhost:8888/waibao/read', (res) => {
    let tmp = '';
    res.map((e) => {
        // console.log(e);
        const a = `${e.xingjiabi.replace(/[^0-9]/ig,'') === '' ? '暂无性价比数据' : e.xingjiabi.replace(/[^0-9]/ig,'') + '%'}`;
        tmp += `<tr><td>${e.id}</td><td><a href="${e.href}">${e.href}</a></td><td>${e.goumai_money}</td><td>${e.zhesuan_money}</td><td>${e.zhejia}</td><td>${a}</td></tr>`;
    })
    console.log(tmp);
    $('#table').append(tmp);
})
