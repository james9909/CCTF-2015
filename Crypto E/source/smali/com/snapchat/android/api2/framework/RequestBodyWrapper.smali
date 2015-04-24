.class public Lcom/snapchat/android/api2/framework/RequestBodyWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBodyObject:Ljava/lang/Object;

.field private final mType:Lcom/snapchat/android/api2/framework/RequestBodyType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/RequestBodyType;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;->mBodyObject:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;->mType:Lcom/snapchat/android/api2/framework/RequestBodyType;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;->mBodyObject:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/api2/framework/RequestBodyType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;->mType:Lcom/snapchat/android/api2/framework/RequestBodyType;

    return-object v0
.end method
