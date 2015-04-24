.class public Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/EndpointSet;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(ZLcom/snapchat/android/model/EndpointSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->a:Lcom/snapchat/android/model/EndpointSet;

    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->b:Z

    .line 17
    iput p3, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->c:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/EndpointSet;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->a:Lcom/snapchat/android/model/EndpointSet;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->c:I

    return v0
.end method
