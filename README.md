#Do not use

V2ray deployed to [Kintohub](https://app.kintohub.com)

### Deploy

Port: 3000

![alice](https://github.com/yeahwu/kinto/blob/master/img/ali.jpg)

ENV:

![alice1](https://github.com/yeahwu/kinto/blob/master/img/ali2.PNG)

### Client use

Choose vmess or vless protocol. 

![alice3](https://github.com/yeahwu/kinto/blob/master/img/kinto3.jpg)

Default UUID: c95ef1d4-f3ac-4586-96e9-234a37dda068

### Cloudflare Workers

```
addEventListener(
    "fetch",event => {
        let url=new URL(event.request.url);
        url.hostname="kinto-404.us1.kinto.io";
        let request=new Request(url,event.request);
        event. respondWith(
            fetch(request)
        )
    }
)
```

#### [LICENSE](https://raw.githubusercontent.com/yeahwu/jktest/master/LICENSE)
