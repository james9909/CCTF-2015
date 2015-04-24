.class public Lcom/snapchat/android/model/HashFieldPointer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mField:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/snapchat/android/model/HashFieldPointer;->mKey:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/snapchat/android/model/HashFieldPointer;->mField:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/model/HashFieldPointer;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/model/HashFieldPointer;->mField:Ljava/lang/String;

    return-object v0
.end method
