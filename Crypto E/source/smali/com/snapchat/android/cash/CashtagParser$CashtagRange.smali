.class public Lcom/snapchat/android/cash/CashtagParser$CashtagRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/cash/CashtagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CashtagRange"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    .line 58
    iput p2, p0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    .line 59
    return-void
.end method
