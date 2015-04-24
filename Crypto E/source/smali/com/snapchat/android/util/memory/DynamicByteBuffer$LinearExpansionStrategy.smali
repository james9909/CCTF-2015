.class public Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/memory/DynamicByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearExpansionStrategy"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;->a:I

    add-int/2addr v0, p1

    return v0
.end method
