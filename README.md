# learning-blazor

🙀🙀🙀 Blazorの学習用プロジェクト。  
[公式チュートリアル](https://dotnet.microsoft.com/ja-jp/learn/aspnet/blazor-tutorial/intro)通りに作成した。  

## 実行方法

```shell
# ディレクトリを移動して
cd LearningBlazor

# デバグ実行
dotnet watch
```

Dockerを使うと、、、  

```shell
docker build -t learning-blazor . && docker run -p 8080:8080 -it --rm --name my-learning-blazor learning-blazor
```
