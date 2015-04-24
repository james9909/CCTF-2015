.class Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/ListViewAdapterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/util/ListViewAdapterList;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/ListViewAdapterList;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->b:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->a:Ljava/util/Iterator;

    .line 135
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->b:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->a()V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/util/ListViewAdapterList$IteratorWrapper;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 148
    return-void
.end method
