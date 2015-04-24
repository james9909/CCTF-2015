.class Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->configureHeader(Lcom/emilsjolander/components/stickylistheaders/WrapperView;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iput p2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    #getter for: Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$300(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    iget-object v0, v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    iget v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->this$0:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;

    #getter for: Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    invoke-static {v2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->access$300(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    move-result-object v2

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;->val$position:I

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 143
    :cond_0
    return-void
.end method
