.class public abstract Lcom/snapchat/android/util/listview/ScFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field protected final b:Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/listview/ScFilter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/util/listview/ScFilter;->b:Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/listview/ScFilter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 44
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/util/listview/ScFilter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    invoke-virtual {p0, v1}, Lcom/snapchat/android/util/listview/ScFilter;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/listview/ScFilter;->b:Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;

    invoke-interface {v1, v0}, Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;->a(Ljava/util/List;)V

    .line 80
    return-void

    .line 77
    :cond_0
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method
