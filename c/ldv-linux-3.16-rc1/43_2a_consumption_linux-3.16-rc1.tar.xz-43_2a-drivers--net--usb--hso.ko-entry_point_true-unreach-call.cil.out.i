extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13760_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13762_128 {
   struct __anonstruct_ldv_13760_129 ldv_13760 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13762_128 ldv_13762 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct cred;
struct inode;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_148 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14668_154 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14668_154 ldv_14668 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
struct tty_struct;
struct usb_interface;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_17556_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17564_172 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_17577_174 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_17578_173 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_17577_174 ldv_17577 ;
};
union __anonunion_type_data_175 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_177 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_17593_176 {
   union __anonunion_payload_177 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17556_171 ldv_17556 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17564_172 ldv_17564 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_17578_173 ldv_17578 ;
   union __anonunion_type_data_175 type_data ;
   union __anonunion_ldv_17593_176 ldv_17593 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_179 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_179 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_20616_180 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_20616_180 ldv_20616 ;
   unsigned long nr_segs ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_182 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_182 sync_serial_settings;
struct __anonstruct_te1_settings_183 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_183 te1_settings;
struct __anonstruct_raw_hdlc_proto_184 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_184 raw_hdlc_proto;
struct __anonstruct_fr_proto_185 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_185 fr_proto;
struct __anonstruct_fr_proto_pvc_186 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_186 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_187 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_187 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_188 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_188 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_189 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_189 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_190 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_191 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_190 ifr_ifrn ;
   union __anonunion_ifr_ifru_191 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_24599_194 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_24600_193 {
   struct __anonstruct_ldv_24599_194 ldv_24599 ;
};
struct lockref {
   union __anonunion_ldv_24600_193 ldv_24600 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_24623_196 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_24625_195 {
   struct __anonstruct_ldv_24623_196 ldv_24623 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_24625_195 ldv_24625 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_197 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_197 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_24986_199 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_24988_198 {
   struct __anonstruct_ldv_24986_199 ldv_24986 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_24988_198 ldv_24988 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_200 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_200 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_25515_201 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_25515_201 ldv_25515 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_25929_204 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25949_205 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25966_206 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_25929_204 ldv_25929 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_25949_205 ldv_25949 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25966_206 ldv_25966 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_207 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_207 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_209 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_208 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_209 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_208 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct_ldv_30790_227 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_30791_226 {
   u64 v64 ;
   struct __anonstruct_ldv_30790_227 ldv_30790 ;
};
struct skb_mstamp {
   union __anonunion_ldv_30791_226 ldv_30791 ;
};
union __anonunion_ldv_30810_228 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_30826_230 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_30827_229 {
   __wsum csum ;
   struct __anonstruct_ldv_30826_230 ldv_30826 ;
};
union __anonunion_ldv_30866_231 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_30872_232 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_30810_228 ldv_30810 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_30827_229 ldv_30827 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_30866_231 ldv_30866 ;
   __u32 secmark ;
   union __anonunion_ldv_30872_232 ldv_30872 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
   u16 max_dsize ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *base_cftypes ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_246 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_247 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion_ldv_40131_248 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_246 adj_list ;
   struct __anonstruct_all_adj_list_247 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_40131_248 ldv_40131 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
   int streams ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion_ldv_43303_252 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion_ldv_43303_252 ldv_43303 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned char closing : 1 ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
enum rfkill_type {
    RFKILL_TYPE_ALL = 0,
    RFKILL_TYPE_WLAN = 1,
    RFKILL_TYPE_BLUETOOTH = 2,
    RFKILL_TYPE_UWB = 3,
    RFKILL_TYPE_WIMAX = 4,
    RFKILL_TYPE_WWAN = 5,
    RFKILL_TYPE_GPS = 6,
    RFKILL_TYPE_FM = 7,
    RFKILL_TYPE_NFC = 8,
    NUM_RFKILL_TYPES = 9
} ;
struct rfkill;
struct rfkill_ops {
   void (*poll)(struct rfkill * , void * ) ;
   void (*query)(struct rfkill * , void * ) ;
   int (*set_block)(void * , bool ) ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9U] ;
};
struct uart_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 rx ;
   __u32 tx ;
   __u32 frame ;
   __u32 overrun ;
   __u32 parity ;
   __u32 brk ;
   __u32 buf_overrun ;
};
enum pkt_parse_state {
    WAIT_IP = 0,
    WAIT_DATA = 1,
    WAIT_SYNC = 2
} ;
struct hso_shared_int {
   struct usb_endpoint_descriptor *intr_endp ;
   void *shared_intr_buf ;
   struct urb *shared_intr_urb ;
   struct usb_device *usb ;
   int use_count ;
   int ref_count ;
   struct mutex shared_int_lock ;
};
struct hso_device;
struct hso_net {
   struct hso_device *parent ;
   struct net_device *net ;
   struct rfkill *rfkill ;
   struct usb_endpoint_descriptor *in_endp ;
   struct usb_endpoint_descriptor *out_endp ;
   struct urb *mux_bulk_rx_urb_pool[4U] ;
   struct urb *mux_bulk_tx_urb ;
   void *mux_bulk_rx_buf_pool[4U] ;
   void *mux_bulk_tx_buf ;
   struct sk_buff *skb_rx_buf ;
   struct sk_buff *skb_tx_buf ;
   enum pkt_parse_state rx_parse_state ;
   spinlock_t net_lock ;
   unsigned short rx_buf_size ;
   unsigned short rx_buf_missing ;
   struct iphdr rx_ip_hdr ;
   unsigned long flags ;
};
enum rx_ctrl_state {
    RX_IDLE = 0,
    RX_SENT = 1,
    RX_PENDING = 2
} ;
struct hso_serial_state_notification {
   u8 bmRequestType ;
   u8 bNotification ;
   u16 wValue ;
   u16 wIndex ;
   u16 wLength ;
   u16 UART_state_bitmap ;
};
struct hso_tiocmget {
   struct mutex mutex ;
   wait_queue_head_t waitq ;
   int intr_completed ;
   struct usb_endpoint_descriptor *endp ;
   struct urb *urb ;
   struct hso_serial_state_notification serial_state_notification ;
   u16 prev_UART_state_bitmap ;
   struct uart_icount icount ;
};
struct hso_serial {
   struct hso_device *parent ;
   int magic ;
   u8 minor ;
   struct hso_shared_int *shared_int ;
   struct urb *rx_urb[2U] ;
   u8 num_rx_urbs ;
   u8 *rx_data[2U] ;
   u16 rx_data_length ;
   struct urb *tx_urb ;
   u8 *tx_data ;
   u8 *tx_buffer ;
   u16 tx_data_length ;
   u16 tx_data_count ;
   u16 tx_buffer_count ;
   struct usb_ctrlrequest ctrl_req_tx ;
   struct usb_ctrlrequest ctrl_req_rx ;
   struct usb_endpoint_descriptor *in_endp ;
   struct usb_endpoint_descriptor *out_endp ;
   enum rx_ctrl_state rx_state ;
   u8 rts_state ;
   u8 dtr_state ;
   unsigned char tx_urb_used : 1 ;
   struct tty_port port ;
   spinlock_t serial_lock ;
   int (*write_data)(struct hso_serial * ) ;
   struct hso_tiocmget *tiocmget ;
   int curr_rx_urb_idx ;
   u16 curr_rx_urb_offset ;
   u8 rx_urb_filled[2U] ;
   struct tasklet_struct unthrottle_tasklet ;
   struct work_struct retry_unthrottle_workqueue ;
};
union __anonunion_port_data_256 {
   struct hso_serial *dev_serial ;
   struct hso_net *dev_net ;
};
struct hso_device {
   union __anonunion_port_data_256 port_data ;
   u32 port_spec ;
   u8 is_active ;
   u8 usb_gone ;
   struct work_struct async_get_intf ;
   struct work_struct async_put_intf ;
   struct work_struct reset_device ;
   struct usb_device *usb ;
   struct usb_interface *interface ;
   struct device *dev ;
   struct kref ref ;
   struct mutex mutex ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
extern void __xchg_wrong_size(void) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  default:
  __xadd_wrong_size();
  }
  ldv_5626: ;
  return (__ret + i);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_4(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_7(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int LDV_IN_INTERRUPT = 1;
struct tty_struct *hso_serial_ops_group1 ;
struct net_device *hso_netdev_ops_group1 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct file *hso_serial_ops_group0 ;
int ldv_state_variable_3 ;
struct usb_interface *hso_driver_group1 ;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int usb_counter ;
int ldv_state_variable_4 ;
void ldv_net_device_ops_4(void) ;
void ldv_usb_driver_1(void) ;
void ldv_initialize_tty_operations_2(void) ;
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
__inline static void device_unlock(struct device *dev )
{
  {
  mutex_unlock(& dev->mutex);
  return;
}
}
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_27(dev, length, 32U);
  return (tmp);
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern void __tasklet_hi_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_hi_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_hi_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3264U);
}
}
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_44(struct net_device *dev ) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
extern int netif_rx(struct sk_buff * ) ;
__inline static bool netif_device_present(struct net_device *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern struct net_device *alloc_netdev_mqs(int , char const * , void (*)(struct net_device * ) ,
                                           unsigned int , unsigned int ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_45(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_43(struct net_device *dev ) ;
__inline static int usb_endpoint_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 3);
}
}
__inline static void pm_runtime_mark_last_busy(struct device *dev )
{
  {
  *((unsigned long volatile *)(& dev->power.last_busy)) = jiffies;
  return;
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern int usb_lock_device_for_reset(struct usb_device * , struct usb_interface const * ) ;
extern int usb_reset_device(struct usb_device * ) ;
extern int usb_autopm_get_interface(struct usb_interface * ) ;
extern void usb_autopm_put_interface(struct usb_interface * ) ;
__inline static void usb_mark_last_busy(struct usb_device *udev )
{
  {
  pm_runtime_mark_last_busy(& udev->dev);
  return;
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_51(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_52(struct usb_driver *arg ) ;
__inline static void usb_fill_control_urb(struct urb *urb , struct usb_device *dev ,
                                          unsigned int pipe , unsigned char *setup_packet ,
                                          void *transfer_buffer , int buffer_length ,
                                          void (*complete_fn)(struct urb * ) , void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->setup_packet = setup_packet;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  int __val ;
  int __min ;
  int __max ;
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    __val = interval;
    __min = 1;
    __max = 16;
    __val = __min > __val ? __min : __val;
    interval = __max < __val ? __max : __val;
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
struct urb *ldv_usb_alloc_urb_41(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_42(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_46(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_47(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_48(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_49(int ldv_func_arg1 , gfp_t flags ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
int ldv_usb_submit_urb_33(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_34(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_35(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_36(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_38(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_39(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_40(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_50(struct urb *ldv_func_arg1 , gfp_t flags ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  bool tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if ((int )tmp___0) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
extern void tty_kref_put(struct tty_struct * ) ;
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
extern void tty_termios_encode_baud_rate(struct ktermios * , speed_t , speed_t ) ;
extern void tty_encode_baud_rate(struct tty_struct * , speed_t , speed_t ) ;
extern void tty_port_init(struct tty_port * ) ;
extern struct device *tty_port_register_device(struct tty_port * , struct tty_driver * ,
                                               unsigned int , struct device * ) ;
extern void tty_port_destroy(struct tty_port * ) ;
extern struct tty_struct *tty_port_tty_get(struct tty_port * ) ;
extern void tty_port_tty_set(struct tty_port * , struct tty_struct * ) ;
extern void tty_port_tty_hangup(struct tty_port * , bool ) ;
extern void tty_port_tty_wakeup(struct tty_port * ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
extern struct rfkill *rfkill_alloc(char const * , struct device * , enum rfkill_type const ,
                                   struct rfkill_ops const * , void * ) ;
extern int rfkill_register(struct rfkill * ) ;
extern void rfkill_unregister(struct rfkill * ) ;
extern void rfkill_destroy(struct rfkill * ) ;
static int hso_serial_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
static void ctrl_callback(struct urb *urb ) ;
static int put_rxbuf_data(struct urb *urb , struct hso_serial *serial ) ;
static void hso_kick_transmit(struct hso_serial *serial ) ;
static int hso_mux_submit_intr_urb(struct hso_shared_int *shared_int , struct usb_device *usb ,
                                   gfp_t gfp ) ;
static void handle_usb_error(int status , char const *function , struct hso_device *hso_dev ) ;
static struct usb_endpoint_descriptor *hso_get_ep(struct usb_interface *intf , int type ,
                                                  int dir ) ;
static int hso_get_mux_ports(struct usb_interface *intf , unsigned char *ports ) ;
static void hso_free_interface(struct usb_interface *interface ) ;
static int hso_start_serial_device(struct hso_device *hso_dev , gfp_t flags ) ;
static int hso_stop_serial_device(struct hso_device *hso_dev ) ;
static int hso_start_net_device(struct hso_device *hso_dev ) ;
static void hso_free_shared_int(struct hso_shared_int *mux ) ;
static int hso_stop_net_device(struct hso_device *hso_dev ) ;
static void hso_serial_ref_free(struct kref *ref ) ;
static void hso_std_serial_read_bulk_callback(struct urb *urb ) ;
static int hso_mux_serial_read(struct hso_serial *serial ) ;
static void async_get_intf(struct work_struct *data ) ;
static void async_put_intf(struct work_struct *data ) ;
static int hso_put_activity(struct hso_device *hso_dev ) ;
static int hso_get_activity(struct hso_device *hso_dev ) ;
static void tiocmget_intr_callback(struct urb *urb ) ;
static void reset_device(struct work_struct *data ) ;
__inline static struct hso_net *dev2net(struct hso_device *hso_dev )
{
  {
  return (hso_dev->port_data.dev_net);
}
}
__inline static struct hso_serial *dev2ser(struct hso_device *hso_dev )
{
  {
  return (hso_dev->port_data.dev_serial);
}
}
static int debug ;
static int tty_major ;
static int disable_net ;
static char const driver_name[4U] = { 'h', 's', 'o', '\000'};
static char const tty_filename[6U] = { 't', 't', 'y', 'H',
        'S', '\000'};
static char const *version = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11203/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/hso.o.c.prepared: Option Wireless";
static struct usb_driver hso_driver ;
static struct tty_driver *tty_drv ;
static struct hso_device *serial_table[256U] ;
static struct hso_device *network_table[10U] ;
static spinlock_t serial_table_lock ;
static s32 const default_port_spec[4U] = { 274, 528, 529, 0};
static s32 const icon321_port_spec[5U] = { 274, 521, 529, 528,
        0};
static struct usb_device_id const hso_ids[55U] =
  { {3U, 2800U, 26385U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26417U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26449U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26481U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26513U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26641U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26897U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26961U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 26993U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 28689U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 28721U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 28753U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 28785U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 28945U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 29201U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 29265U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 29297U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 29457U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 49201U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& default_port_spec)},
        {3U, 2800U, 53267U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& icon321_port_spec)},
        {3U, 2800U, 53297U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& icon321_port_spec)},
        {3U, 2800U, 53299U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned long )(& icon321_port_spec)},
        {3U, 2800U, 29441U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 29537U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 29569U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 29697U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 29953U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 30209U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 30465U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 30470U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 30721U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 30977U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 31233U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 31237U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33280U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33281U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33536U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33538U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33540U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 33792U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 34304U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 34816U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 35072U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 36864U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53301U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53333U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53589U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53845U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53335U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53591U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53847U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 54103U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 53336U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 2800U, 49408U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb__hso_ids_device_table ;
static ssize_t hso_sysfs_show_porttype(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct hso_device *hso_dev ;
  void *tmp ;
  char *port_name ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  hso_dev = (struct hso_device *)tmp;
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    return (0L);
  } else {
  }
  switch (hso_dev->port_spec & 255U) {
  case 1U:
  port_name = (char *)"Control";
  goto ldv_46209;
  case 2U:
  port_name = (char *)"Application";
  goto ldv_46209;
  case 5U:
  port_name = (char *)"Application2";
  goto ldv_46209;
  case 3U:
  port_name = (char *)"GPS";
  goto ldv_46209;
  case 6U:
  port_name = (char *)"GPS Control";
  goto ldv_46209;
  case 4U:
  port_name = (char *)"PCSC";
  goto ldv_46209;
  case 16U:
  port_name = (char *)"Diagnostic";
  goto ldv_46209;
  case 9U:
  port_name = (char *)"Diagnostic2";
  goto ldv_46209;
  case 17U:
  port_name = (char *)"Modem";
  goto ldv_46209;
  case 18U:
  port_name = (char *)"Network";
  goto ldv_46209;
  default:
  port_name = (char *)"Unknown";
  goto ldv_46209;
  }
  ldv_46209:
  tmp___0 = sprintf(buf, "%s\n", port_name);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_hsotype = {{"hsotype", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & hso_sysfs_show_porttype,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static int hso_urb_to_index(struct hso_serial *serial , struct urb *urb )
{
  int idx ;
  {
  idx = 0;
  goto ldv_46235;
  ldv_46234: ;
  if ((unsigned long )serial->rx_urb[idx] == (unsigned long )urb) {
    return (idx);
  } else {
  }
  idx = idx + 1;
  ldv_46235: ;
  if ((int )serial->num_rx_urbs > idx) {
    goto ldv_46234;
  } else {
  }
  dev_err((struct device const *)(serial->parent)->dev, "hso_urb_to_index failed\n");
  return (-1);
}
}
static u32 hso_mux_to_port(int mux )
{
  u32 result ;
  {
  switch (mux) {
  case 1:
  result = 1U;
  goto ldv_46242;
  case 2:
  result = 2U;
  goto ldv_46242;
  case 4:
  result = 4U;
  goto ldv_46242;
  case 8:
  result = 3U;
  goto ldv_46242;
  case 16:
  result = 5U;
  goto ldv_46242;
  default:
  result = 0U;
  }
  ldv_46242: ;
  return (result);
}
}
static u32 hso_port_to_mux(int port )
{
  u32 result ;
  {
  switch (port & 255) {
  case 1:
  result = 0U;
  goto ldv_46253;
  case 2:
  result = 1U;
  goto ldv_46253;
  case 4:
  result = 2U;
  goto ldv_46253;
  case 3:
  result = 3U;
  goto ldv_46253;
  case 5:
  result = 4U;
  goto ldv_46253;
  default:
  result = 0U;
  }
  ldv_46253: ;
  return (result);
}
}
static struct hso_serial *get_serial_by_shared_int_and_type(struct hso_shared_int *shared_int ,
                                                            int mux )
{
  int i ;
  int port ;
  u32 tmp ;
  struct hso_serial *tmp___0 ;
  struct hso_serial *tmp___1 ;
  {
  tmp = hso_mux_to_port(mux);
  port = (int )tmp;
  i = 0;
  goto ldv_46266;
  ldv_46265: ;
  if ((unsigned long )serial_table[i] != (unsigned long )((struct hso_device *)0)) {
    tmp___1 = dev2ser(serial_table[i]);
    if ((unsigned long )tmp___1->shared_int == (unsigned long )shared_int) {
      if (((serial_table[i])->port_spec & 255U) == (u32 )port) {
        tmp___0 = dev2ser(serial_table[i]);
        return (tmp___0);
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46266: ;
  if (i <= 255) {
    goto ldv_46265;
  } else {
  }
  return ((struct hso_serial *)0);
}
}
static struct hso_serial *get_serial_by_index(unsigned int index )
{
  struct hso_serial *serial ;
  unsigned long flags ;
  {
  serial = (struct hso_serial *)0;
  ldv_spin_lock();
  if ((unsigned long )serial_table[index] != (unsigned long )((struct hso_device *)0)) {
    serial = dev2ser(serial_table[index]);
  } else {
  }
  spin_unlock_irqrestore(& serial_table_lock, flags);
  return (serial);
}
}
static int get_free_serial_index(void)
{
  int index ;
  unsigned long flags ;
  {
  ldv_spin_lock();
  index = 0;
  goto ldv_46279;
  ldv_46278: ;
  if ((unsigned long )serial_table[index] == (unsigned long )((struct hso_device *)0)) {
    spin_unlock_irqrestore(& serial_table_lock, flags);
    return (index);
  } else {
  }
  index = index + 1;
  ldv_46279: ;
  if (index <= 255) {
    goto ldv_46278;
  } else {
  }
  spin_unlock_irqrestore(& serial_table_lock, flags);
  printk("\v%s: no free serial devices in table\n", "get_free_serial_index");
  return (-1);
}
}
static void set_serial_by_index(unsigned int index , struct hso_serial *serial )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  if ((unsigned long )serial != (unsigned long )((struct hso_serial *)0)) {
    serial_table[index] = serial->parent;
  } else {
    serial_table[index] = (struct hso_device *)0;
  }
  spin_unlock_irqrestore(& serial_table_lock, flags);
  return;
}
}
static void handle_usb_error(int status , char const *function , struct hso_device *hso_dev )
{
  char *explanation ;
  {
  switch (status) {
  case -19:
  explanation = (char *)"no device";
  goto ldv_46294;
  case -2:
  explanation = (char *)"endpoint not enabled";
  goto ldv_46294;
  case -32:
  explanation = (char *)"endpoint stalled";
  goto ldv_46294;
  case -28:
  explanation = (char *)"not enough bandwidth";
  goto ldv_46294;
  case -108:
  explanation = (char *)"device disabled";
  goto ldv_46294;
  case -113:
  explanation = (char *)"device suspended";
  goto ldv_46294;
  case -22: ;
  case -11: ;
  case -27: ;
  case -90:
  explanation = (char *)"internal error";
  goto ldv_46294;
  case -84: ;
  case -71: ;
  case -62: ;
  case -110:
  explanation = (char *)"protocol error";
  if ((unsigned long )hso_dev != (unsigned long )((struct hso_device *)0)) {
    schedule_work(& hso_dev->reset_device);
  } else {
  }
  goto ldv_46294;
  default:
  explanation = (char *)"unknown status";
  goto ldv_46294;
  }
  ldv_46294: ;
  if (debug & 1) {
    printk("\016[%d:%s]: %s: received USB status - %s (%d)\n", 745, "handle_usb_error",
           function, explanation, status);
  } else {
  }
  return;
}
}
static int hso_net_open(struct net_device *net )
{
  struct hso_net *odev ;
  void *tmp ;
  unsigned long flags ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  odev = (struct hso_net *)tmp;
  flags = 0UL;
  if ((unsigned long )odev == (unsigned long )((struct hso_net *)0)) {
    dev_err((struct device const *)(& net->dev), "No net device !\n");
    return (-19);
  } else {
  }
  odev->skb_tx_buf = (struct sk_buff *)0;
  ldv_spin_lock();
  odev->rx_parse_state = 0;
  odev->rx_buf_size = 0U;
  odev->rx_buf_missing = 20U;
  spin_unlock_irqrestore(& odev->net_lock, flags);
  set_bit(0L, (unsigned long volatile *)(& odev->flags));
  hso_start_net_device(odev->parent);
  netif_start_queue(net);
  return (0);
}
}
static int hso_net_close(struct net_device *net )
{
  struct hso_net *odev ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  odev = (struct hso_net *)tmp;
  netif_stop_queue(net);
  clear_bit(0L, (unsigned long volatile *)(& odev->flags));
  hso_stop_net_device(odev->parent);
  return (0);
}
}
static void write_bulk_callback(struct urb *urb )
{
  struct hso_net *odev ;
  int status ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  odev = (struct hso_net *)urb->context;
  status = urb->status;
  if ((unsigned long )odev == (unsigned long )((struct hso_net *)0)) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s: device not running\n",
            "write_bulk_callback");
    return;
  } else {
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& odev->flags));
    if (tmp == 0) {
      dev_err((struct device const *)(& (urb->dev)->dev), "%s: device not running\n",
              "write_bulk_callback");
      return;
    } else {
    }
  }
  tmp___0 = netif_device_present(odev->net);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s: net device not present\n",
            "write_bulk_callback");
    return;
  } else {
  }
  if (status != 0) {
    handle_usb_error(status, "write_bulk_callback", odev->parent);
  } else {
  }
  hso_put_activity(odev->parent);
  netif_wake_queue(odev->net);
  return;
}
}
static netdev_tx_t hso_net_start_xmit(struct sk_buff *skb , struct net_device *net )
{
  struct hso_net *odev ;
  void *tmp ;
  int result ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  odev = (struct hso_net *)tmp;
  netif_stop_queue(net);
  tmp___0 = hso_get_activity(odev->parent);
  if (tmp___0 == -11) {
    odev->skb_tx_buf = skb;
    return (0);
  } else {
  }
  __len = (size_t )skb->len;
  __ret = __builtin_memcpy(odev->mux_bulk_tx_buf, (void const *)skb->data, __len);
  if (debug & 1) {
    printk("\016[%d:%s]: len: %d/%d\n", 844, "hso_net_start_xmit", skb->len, 2048);
  } else {
  }
  tmp___1 = __create_pipe((odev->parent)->usb, (unsigned int )(odev->out_endp)->bEndpointAddress & 127U);
  usb_fill_bulk_urb(odev->mux_bulk_tx_urb, (odev->parent)->usb, tmp___1 | 3221225472U,
                    odev->mux_bulk_tx_buf, (int )skb->len, & write_bulk_callback,
                    (void *)odev);
  (odev->mux_bulk_tx_urb)->transfer_flags = (odev->mux_bulk_tx_urb)->transfer_flags | 64U;
  result = ldv_usb_submit_urb_33(odev->mux_bulk_tx_urb, 32U);
  if (result != 0) {
    dev_warn((struct device const *)(& ((odev->parent)->interface)->dev), "failed mux_bulk_tx_urb %d\n",
             result);
    net->stats.tx_errors = net->stats.tx_errors + 1UL;
    netif_start_queue(net);
  } else {
    net->stats.tx_packets = net->stats.tx_packets + 1UL;
    net->stats.tx_bytes = net->stats.tx_bytes + (unsigned long )skb->len;
  }
  consume_skb(skb);
  return (0);
}
}
static struct ethtool_ops const ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ethtool_op_get_link, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static void hso_net_tx_timeout(struct net_device *net )
{
  struct hso_net *odev ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  odev = (struct hso_net *)tmp;
  if ((unsigned long )odev == (unsigned long )((struct hso_net *)0)) {
    return;
  } else {
  }
  dev_warn((struct device const *)(& net->dev), "Tx timed out.\n");
  if ((unsigned long )odev->mux_bulk_tx_urb != (unsigned long )((struct urb *)0) && (odev->mux_bulk_tx_urb)->status == -115) {
    usb_unlink_urb(odev->mux_bulk_tx_urb);
  } else {
  }
  net->stats.tx_errors = net->stats.tx_errors + 1UL;
  return;
}
}
static void packetizeRx(struct hso_net *odev , unsigned char *ip_pkt , unsigned int count ,
                        unsigned char is_eop )
{
  unsigned short temp_bytes ;
  unsigned short buffer_offset ;
  unsigned short frame_len ;
  unsigned char *tmp_rx_buf ;
  size_t __len ;
  void *__ret ;
  __u16 tmp ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  buffer_offset = 0U;
  if (debug & 1) {
    printk("\016[%d:%s]: Rx %d bytes\n", 908, "packetizeRx", count);
  } else {
  }
  goto ldv_46355;
  ldv_46366: ;
  switch ((unsigned int )odev->rx_parse_state) {
  case 0U:
  temp_bytes = (unsigned short )(count < (unsigned int )odev->rx_buf_missing ? count : (unsigned int )odev->rx_buf_missing);
  __len = (size_t )temp_bytes;
  __ret = __builtin_memcpy((void *)(& odev->rx_ip_hdr) + (unsigned long )odev->rx_buf_size,
                           (void const *)ip_pkt + (unsigned long )buffer_offset,
                           __len);
  odev->rx_buf_size = (int )odev->rx_buf_size + (int )temp_bytes;
  buffer_offset = (int )buffer_offset + (int )temp_bytes;
  odev->rx_buf_missing = (int )odev->rx_buf_missing - (int )temp_bytes;
  count = count - (unsigned int )temp_bytes;
  if ((unsigned int )odev->rx_buf_missing == 0U) {
    tmp = __fswab16((int )odev->rx_ip_hdr.tot_len);
    frame_len = tmp;
    if ((unsigned int )frame_len > 1500U || (unsigned int )frame_len <= 19U) {
      dev_err((struct device const *)(& (odev->net)->dev), "Invalid frame (%d) length\n",
              (int )frame_len);
      odev->rx_parse_state = 2;
      goto ldv_46355;
    } else {
    }
    odev->skb_rx_buf = netdev_alloc_skb(odev->net, (unsigned int )frame_len);
    if ((unsigned long )odev->skb_rx_buf == (unsigned long )((struct sk_buff *)0)) {
      if (debug & 1) {
        printk("\016[%d:%s]: could not allocate memory\n", 948, "packetizeRx");
      } else {
      }
      odev->rx_parse_state = 2;
      return;
    } else {
    }
    tmp_rx_buf = skb_put(odev->skb_rx_buf, 20U);
    __len___0 = 20UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)tmp_rx_buf, (void const *)(& odev->rx_ip_hdr),
                           __len___0);
    } else {
      __ret___0 = __builtin_memcpy((void *)tmp_rx_buf, (void const *)(& odev->rx_ip_hdr),
                                   __len___0);
    }
    odev->rx_buf_size = 20U;
    odev->rx_buf_missing = (unsigned int )frame_len - 20U;
    odev->rx_parse_state = 1;
  } else {
  }
  goto ldv_46359;
  case 1U:
  temp_bytes = (unsigned short )(count < (unsigned int )odev->rx_buf_missing ? count : (unsigned int )odev->rx_buf_missing);
  tmp_rx_buf = skb_put(odev->skb_rx_buf, (unsigned int )temp_bytes);
  __len___1 = (size_t )temp_bytes;
  __ret___1 = __builtin_memcpy((void *)tmp_rx_buf, (void const *)ip_pkt + (unsigned long )buffer_offset,
                               __len___1);
  odev->rx_buf_missing = (int )odev->rx_buf_missing - (int )temp_bytes;
  count = count - (unsigned int )temp_bytes;
  buffer_offset = (int )buffer_offset + (int )temp_bytes;
  odev->rx_buf_size = (int )odev->rx_buf_size + (int )temp_bytes;
  if ((unsigned int )odev->rx_buf_missing == 0U) {
    (odev->skb_rx_buf)->protocol = 8U;
    skb_reset_mac_header(odev->skb_rx_buf);
    netif_rx(odev->skb_rx_buf);
    odev->skb_rx_buf = (struct sk_buff *)0;
    (odev->net)->stats.rx_packets = (odev->net)->stats.rx_packets + 1UL;
    (odev->net)->stats.rx_bytes = (odev->net)->stats.rx_bytes + (unsigned long )odev->rx_buf_size;
    odev->rx_buf_size = 0U;
    odev->rx_buf_missing = 20U;
    odev->rx_parse_state = 0;
  } else {
  }
  goto ldv_46359;
  case 2U: ;
  if (debug & 1) {
    printk("\016[%d:%s]:  W_S\n", 1008, "packetizeRx");
  } else {
  }
  count = 0U;
  goto ldv_46359;
  default: ;
  if (debug & 1) {
    printk("\016[%d:%s]:  \n", 1012, "packetizeRx");
  } else {
  }
  count = count - 1U;
  goto ldv_46359;
  }
  ldv_46359: ;
  ldv_46355: ;
  if (count != 0U) {
    goto ldv_46366;
  } else {
  }
  if ((unsigned int )is_eop != 0U) {
    if ((unsigned int )odev->rx_parse_state == 2U) {
      odev->rx_parse_state = 0;
      odev->rx_buf_size = 0U;
      odev->rx_buf_missing = 20U;
    } else {
    }
  } else {
  }
  return;
}
}
static void fix_crc_bug(struct urb *urb , __le16 max_packet_size )
{
  u8 crc_check[4U] ;
  u32 rest ;
  int tmp ;
  {
  crc_check[0] = 222U;
  crc_check[1] = 173U;
  crc_check[2] = 190U;
  crc_check[3] = 239U;
  rest = urb->actual_length % (u32 )max_packet_size;
  if (rest == 5U || rest == 6U) {
    tmp = memcmp((void const *)urb->transfer_buffer + ((unsigned long )urb->actual_length + 0xfffffffffffffffcUL),
                 (void const *)(& crc_check), 4UL);
    if (tmp == 0) {
      urb->actual_length = urb->actual_length - 4U;
    } else {
    }
  } else {
  }
  return;
}
}
static void read_bulk_callback(struct urb *urb )
{
  struct hso_net *odev ;
  struct net_device *net ;
  int result ;
  int status ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  odev = (struct hso_net *)urb->context;
  status = urb->status;
  if (status != 0) {
    handle_usb_error(status, "read_bulk_callback", odev->parent);
    return;
  } else {
  }
  if ((unsigned long )odev == (unsigned long )((struct hso_net *)0)) {
    goto _L;
  } else {
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& odev->flags));
    if (tmp == 0) {
      _L:
      if (debug & 1) {
        printk("\016[%d:%s]: BULK IN callback but driver is not active!\n", 1056,
               "read_bulk_callback");
      } else {
      }
      return;
    } else {
    }
  }
  usb_mark_last_busy(urb->dev);
  net = odev->net;
  tmp___0 = netif_device_present(net);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  if (((odev->parent)->port_spec & 16777216U) != 0U) {
    fix_crc_bug(urb, (int )(odev->in_endp)->wMaxPacketSize);
  } else {
  }
  if (urb->actual_length != 0U) {
    spin_lock(& odev->net_lock);
    packetizeRx(odev, (unsigned char *)urb->transfer_buffer, urb->actual_length, urb->transfer_buffer_length > urb->actual_length);
    spin_unlock(& odev->net_lock);
  } else {
  }
  tmp___2 = __create_pipe((odev->parent)->usb, (unsigned int )(odev->in_endp)->bEndpointAddress & 127U);
  usb_fill_bulk_urb(urb, (odev->parent)->usb, tmp___2 | 3221225600U, urb->transfer_buffer,
                    2048, & read_bulk_callback, (void *)odev);
  result = ldv_usb_submit_urb_34(urb, 32U);
  if (result != 0) {
    dev_warn((struct device const *)(& ((odev->parent)->interface)->dev), "%s failed submit mux_bulk_rx_urb %d\n",
             "read_bulk_callback", result);
  } else {
  }
  return;
}
}
static void hso_init_termios(struct ktermios *termios )
{
  {
  termios->c_iflag = termios->c_iflag & 4294965780U;
  termios->c_oflag = termios->c_oflag & 4294967294U;
  termios->c_lflag = termios->c_lflag & 4294934452U;
  termios->c_cflag = termios->c_cflag & 4294962880U;
  termios->c_cflag = termios->c_cflag | 48U;
  tty_termios_encode_baud_rate(termios, 115200U, 115200U);
  return;
}
}
static void _hso_serial_set_termios(struct tty_struct *tty , struct ktermios *old )
{
  struct hso_serial *serial ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    printk("\v%s: no tty structures", "_hso_serial_set_termios");
    return;
  } else {
  }
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: port %d\n", 1152, "_hso_serial_set_termios", (int )serial->minor);
  } else {
  }
  tty->termios.c_iflag = tty->termios.c_iflag & 4294966271U;
  tty->termios.c_cflag = tty->termios.c_cflag & 4294962880U;
  tty->termios.c_cflag = tty->termios.c_cflag | 48U;
  tty_encode_baud_rate(tty, 115200U, 115200U);
  return;
}
}
static void hso_resubmit_rx_bulk_urb(struct hso_serial *serial , struct urb *urb )
{
  int result ;
  unsigned int tmp ;
  {
  tmp = __create_pipe((serial->parent)->usb, (unsigned int )(serial->in_endp)->bEndpointAddress & 127U);
  usb_fill_bulk_urb(urb, (serial->parent)->usb, tmp | 3221225600U, urb->transfer_buffer,
                    (int )serial->rx_data_length, & hso_std_serial_read_bulk_callback,
                    (void *)serial);
  result = ldv_usb_submit_urb_35(urb, 32U);
  if (result != 0) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s failed submit serial rx_urb %d\n",
            "hso_resubmit_rx_bulk_urb", result);
  } else {
  }
  return;
}
}
static void put_rxbuf_data_and_resubmit_bulk_urb(struct hso_serial *serial )
{
  int count ;
  struct urb *curr_urb ;
  {
  goto ldv_46403;
  ldv_46402:
  curr_urb = serial->rx_urb[serial->curr_rx_urb_idx];
  count = put_rxbuf_data(curr_urb, serial);
  if (count == -1) {
    return;
  } else {
  }
  if (count == 0) {
    serial->curr_rx_urb_idx = serial->curr_rx_urb_idx + 1;
    if (serial->curr_rx_urb_idx >= (int )serial->num_rx_urbs) {
      serial->curr_rx_urb_idx = 0;
    } else {
    }
    hso_resubmit_rx_bulk_urb(serial, curr_urb);
  } else {
  }
  ldv_46403: ;
  if ((unsigned int )serial->rx_urb_filled[serial->curr_rx_urb_idx] != 0U) {
    goto ldv_46402;
  } else {
  }
  return;
}
}
static void put_rxbuf_data_and_resubmit_ctrl_urb(struct hso_serial *serial )
{
  int count ;
  struct urb *urb ;
  {
  count = 0;
  urb = serial->rx_urb[0];
  if (serial->port.count > 0) {
    count = put_rxbuf_data(urb, serial);
    if (count == -1) {
      return;
    } else {
    }
  } else {
  }
  if (count == 0 && (urb->actual_length != 0U || (unsigned int )serial->rx_state == 2U)) {
    serial->rx_state = 1;
    hso_mux_serial_read(serial);
  } else {
    serial->rx_state = 0;
  }
  return;
}
}
static void hso_std_serial_read_bulk_callback(struct urb *urb )
{
  struct hso_serial *serial ;
  int status ;
  int tmp ;
  {
  serial = (struct hso_serial *)urb->context;
  status = urb->status;
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: \n--- Got serial_read_bulk callback %02x ---\n", 1241, "hso_std_serial_read_bulk_callback",
           status);
  } else {
  }
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    if (debug & 1) {
      printk("\016[%d:%s]: serial == NULL\n", 1245, "hso_std_serial_read_bulk_callback");
    } else {
    }
    return;
  } else {
  }
  if (status != 0) {
    handle_usb_error(status, "hso_std_serial_read_bulk_callback", serial->parent);
    return;
  } else {
  }
  if (debug & 1) {
    printk("\016[%d:%s]: Actual length = %d\n\n", 1253, "hso_std_serial_read_bulk_callback",
           urb->actual_length);
  } else {
  }
  if (serial->port.count == 0) {
    return;
  } else {
  }
  if (((serial->parent)->port_spec & 16777216U) != 0U) {
    fix_crc_bug(urb, (int )(serial->in_endp)->wMaxPacketSize);
  } else {
  }
  spin_lock(& serial->serial_lock);
  tmp = hso_urb_to_index(serial, urb);
  serial->rx_urb_filled[tmp] = 1U;
  put_rxbuf_data_and_resubmit_bulk_urb(serial);
  spin_unlock(& serial->serial_lock);
  return;
}
}
static void hso_unthrottle_tasklet(struct hso_serial *serial )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  if (((serial->parent)->port_spec & 256U) != 0U) {
    put_rxbuf_data_and_resubmit_ctrl_urb(serial);
  } else {
    put_rxbuf_data_and_resubmit_bulk_urb(serial);
  }
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  return;
}
}
static void hso_unthrottle(struct tty_struct *tty )
{
  struct hso_serial *serial ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  tasklet_hi_schedule(& serial->unthrottle_tasklet);
  return;
}
}
static void hso_unthrottle_workfunc(struct work_struct *work )
{
  struct hso_serial *serial ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  serial = (struct hso_serial *)__mptr + 0xfffffffffffffac0UL;
  hso_unthrottle_tasklet(serial);
  return;
}
}
static int hso_serial_open(struct tty_struct *tty , struct file *filp )
{
  struct hso_serial *serial ;
  struct hso_serial *tmp ;
  int result ;
  int __ret_warn_on ;
  long tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  tmp = get_serial_by_index((unsigned int )tty->index);
  serial = tmp;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0) || serial->magic != 1213419313) {
    __ret_warn_on = 1;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11203/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/hso.o.c.prepared",
                         1308);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    tty->driver_data = (void *)0;
    if (debug & 1) {
      printk("\016[%d:%s]: Failed to open port\n", 1310, "hso_serial_open");
    } else {
    }
    return (-19);
  } else {
  }
  mutex_lock_nested(& (serial->parent)->mutex, 0U);
  result = usb_autopm_get_interface((serial->parent)->interface);
  if (result < 0) {
    goto err_out;
  } else {
  }
  if (debug & 1) {
    printk("\016[%d:%s]: Opening %d\n", 1319, "hso_serial_open", (int )serial->minor);
  } else {
  }
  kref_get(& (serial->parent)->ref);
  tty->driver_data = (void *)serial;
  tty_port_tty_set(& serial->port, tty);
  serial->port.count = serial->port.count + 1;
  if (serial->port.count == 1) {
    serial->rx_state = 0;
    _hso_serial_set_termios(tty, (struct ktermios *)0);
    tasklet_init(& serial->unthrottle_tasklet, (void (*)(unsigned long ))(& hso_unthrottle_tasklet),
                 (unsigned long )serial);
    __init_work(& serial->retry_unthrottle_workqueue, 0);
    __constr_expr_0.counter = 137438953408L;
    serial->retry_unthrottle_workqueue.data = __constr_expr_0;
    lockdep_init_map(& serial->retry_unthrottle_workqueue.lockdep_map, "(&serial->retry_unthrottle_workqueue)",
                     & __key, 0);
    INIT_LIST_HEAD(& serial->retry_unthrottle_workqueue.entry);
    serial->retry_unthrottle_workqueue.func = & hso_unthrottle_workfunc;
    result = hso_start_serial_device(serial->parent, 208U);
    if (result != 0) {
      hso_stop_serial_device(serial->parent);
      serial->port.count = serial->port.count - 1;
      kref_put(& (serial->parent)->ref, & hso_serial_ref_free);
    } else {
    }
  } else
  if (debug & 1) {
    printk("\016[%d:%s]: Port was already open\n", 1344, "hso_serial_open");
  } else {
  }
  usb_autopm_put_interface((serial->parent)->interface);
  if (result != 0) {
    hso_serial_tiocmset(tty, 6U, 0U);
  } else {
  }
  err_out:
  mutex_unlock(& (serial->parent)->mutex);
  return (result);
}
}
static void hso_serial_close(struct tty_struct *tty , struct file *filp )
{
  struct hso_serial *serial ;
  u8 usb_gone ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if (debug & 1) {
    printk("\016[%d:%s]: Closing serial port\n", 1363, "hso_serial_close");
  } else {
  }
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return;
  } else {
  }
  mutex_lock_nested(& (serial->parent)->mutex, 0U);
  usb_gone = (serial->parent)->usb_gone;
  if ((unsigned int )usb_gone == 0U) {
    usb_autopm_get_interface((serial->parent)->interface);
  } else {
  }
  serial->port.count = serial->port.count - 1;
  if (serial->port.count <= 0) {
    serial->port.count = 0;
    tty_port_tty_set(& serial->port, (struct tty_struct *)0);
    if ((unsigned int )usb_gone == 0U) {
      hso_stop_serial_device(serial->parent);
    } else {
    }
    tasklet_kill(& serial->unthrottle_tasklet);
    cancel_work_sync(& serial->retry_unthrottle_workqueue);
  } else {
  }
  if ((unsigned int )usb_gone == 0U) {
    usb_autopm_put_interface((serial->parent)->interface);
  } else {
  }
  mutex_unlock(& (serial->parent)->mutex);
  kref_put(& (serial->parent)->ref, & hso_serial_ref_free);
  return;
}
}
static int hso_serial_write(struct tty_struct *tty , unsigned char const *buf ,
                            int count )
{
  struct hso_serial *serial ;
  int space ;
  int tx_bytes ;
  unsigned long flags ;
  size_t __len ;
  void *__ret ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    printk("\v%s: serial is NULL\n", "hso_serial_write");
    return (-19);
  } else {
  }
  ldv_spin_lock();
  space = (int )serial->tx_data_length - (int )serial->tx_buffer_count;
  tx_bytes = count < space ? count : space;
  if (tx_bytes == 0) {
    goto out;
  } else {
  }
  __len = (size_t )tx_bytes;
  __ret = __builtin_memcpy((void *)serial->tx_buffer + (unsigned long )serial->tx_buffer_count,
                           (void const *)buf, __len);
  serial->tx_buffer_count = (int )serial->tx_buffer_count + (int )((u16 )tx_bytes);
  out:
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  hso_kick_transmit(serial);
  return (tx_bytes);
}
}
static int hso_serial_write_room(struct tty_struct *tty )
{
  struct hso_serial *serial ;
  int room ;
  unsigned long flags ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  ldv_spin_lock();
  room = (int )serial->tx_data_length - (int )serial->tx_buffer_count;
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  return (room);
}
}
static void hso_serial_set_termios(struct tty_struct *tty , struct ktermios *old )
{
  struct hso_serial *serial ;
  unsigned long flags ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )old != (unsigned long )((struct ktermios *)0)) {
    if ((debug & 16) != 0) {
      printk("\016[%d:%s]: Termios called with: cflags new[%d] - old[%d]\n", 1452,
             "hso_serial_set_termios", tty->termios.c_cflag, old->c_cflag);
    } else {
    }
  } else {
  }
  ldv_spin_lock();
  if (serial->port.count != 0) {
    _hso_serial_set_termios(tty, old);
  } else {
    tty->termios = *old;
  }
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  return;
}
}
static int hso_serial_chars_in_buffer(struct tty_struct *tty )
{
  struct hso_serial *serial ;
  int chars ;
  unsigned long flags ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (0);
  } else {
  }
  ldv_spin_lock();
  chars = (int )serial->tx_buffer_count;
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  return (chars);
}
}
static int tiocmget_submit_urb(struct hso_serial *serial , struct hso_tiocmget *tiocmget ,
                               struct usb_device *usb )
{
  int result ;
  unsigned int tmp ;
  {
  if ((unsigned int )(serial->parent)->usb_gone != 0U) {
    return (-19);
  } else {
  }
  tmp = __create_pipe(usb, (unsigned int )(tiocmget->endp)->bEndpointAddress & 127U);
  usb_fill_int_urb(tiocmget->urb, usb, tmp | 1073741952U, (void *)(& tiocmget->serial_state_notification),
                   10, & tiocmget_intr_callback, (void *)serial, (int )(tiocmget->endp)->bInterval);
  result = ldv_usb_submit_urb_36(tiocmget->urb, 32U);
  if (result != 0) {
    dev_warn((struct device const *)(& usb->dev), "%s usb_submit_urb failed %d\n",
             "tiocmget_submit_urb", result);
  } else {
  }
  return (result);
}
}
static void tiocmget_intr_callback(struct urb *urb )
{
  struct hso_serial *serial ;
  struct hso_tiocmget *tiocmget ;
  int status ;
  u16 UART_state_bitmap ;
  u16 prev_UART_state_bitmap ;
  struct uart_icount *icount ;
  struct hso_serial_state_notification *serial_state_notification ;
  struct usb_device *usb ;
  int if_num ;
  long tmp ;
  {
  serial = (struct hso_serial *)urb->context;
  status = urb->status;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return;
  } else {
  }
  if (status != 0) {
    handle_usb_error(status, "tiocmget_intr_callback", serial->parent);
    return;
  } else {
  }
  tiocmget = serial->tiocmget;
  if ((unsigned long )tiocmget == (unsigned long )((struct hso_tiocmget *)0)) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect(((serial->parent)->port_spec & 255U) != 17U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11203/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/hso.o.c.prepared"),
                         "i" (1530), "i" (12UL));
    ldv_46503: ;
    goto ldv_46503;
  } else {
  }
  usb = (serial->parent)->usb;
  if_num = (int )(((serial->parent)->interface)->altsetting)->desc.bInterfaceNumber;
  serial_state_notification = & tiocmget->serial_state_notification;
  if (((((unsigned int )serial_state_notification->bmRequestType != 161U || (unsigned int )serial_state_notification->bNotification != 32U) || (unsigned int )serial_state_notification->wValue != 0U) || (int )serial_state_notification->wIndex != if_num) || (unsigned int )serial_state_notification->wLength != 2U) {
    dev_warn((struct device const *)(& usb->dev), "hso received invalid serial state notification\n");
  } else {
    UART_state_bitmap = serial_state_notification->UART_state_bitmap;
    prev_UART_state_bitmap = tiocmget->prev_UART_state_bitmap;
    icount = & tiocmget->icount;
    spin_lock(& serial->serial_lock);
    if ((((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 64) != 0) {
      icount->parity = icount->parity + 1U;
    } else {
    }
    if ((((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 32) != 0) {
      icount->parity = icount->parity + 1U;
    } else {
    }
    if ((((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 16) != 0) {
      icount->frame = icount->frame + 1U;
    } else {
    }
    if (((int )UART_state_bitmap & 8) != 0 && ((int )prev_UART_state_bitmap & 8) == 0) {
      icount->rng = icount->rng + 1U;
    } else {
    }
    if ((((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 4) != 0) {
      icount->brk = icount->brk + 1U;
    } else {
    }
    if ((((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 2) != 0) {
      icount->dsr = icount->dsr + 1U;
    } else {
    }
    if (((int )UART_state_bitmap ^ (int )prev_UART_state_bitmap) & 1) {
      icount->dcd = icount->dcd + 1U;
    } else {
    }
    tiocmget->prev_UART_state_bitmap = UART_state_bitmap;
    spin_unlock(& serial->serial_lock);
    tiocmget->intr_completed = 1;
    __wake_up(& tiocmget->waitq, 1U, 1, (void *)0);
  }
  memset((void *)serial_state_notification, 0, 10UL);
  tiocmget_submit_urb(serial, tiocmget, (serial->parent)->usb);
  return;
}
}
static int hso_wait_modem_status(struct hso_serial *serial , unsigned long arg )
{
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct uart_icount cprev ;
  struct uart_icount cnow ;
  struct hso_tiocmget *tiocmget ;
  int ret ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  long volatile __ret___1 ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  struct task_struct *tmp___6 ;
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  tiocmget = serial->tiocmget;
  if ((unsigned long )tiocmget == (unsigned long )((struct hso_tiocmget *)0)) {
    return (-2);
  } else {
  }
  spin_lock_irq(& serial->serial_lock);
  __len = 44UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& cprev), (void const *)(& tiocmget->icount), __len);
  } else {
    __ret = __builtin_memcpy((void *)(& cprev), (void const *)(& tiocmget->icount),
                             __len);
  }
  spin_unlock_irq(& serial->serial_lock);
  add_wait_queue(& tiocmget->waitq, & wait);
  ldv_46528:
  spin_lock_irq(& serial->serial_lock);
  __len___0 = 44UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& cnow), (void const *)(& tiocmget->icount), __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(& cnow), (void const *)(& tiocmget->icount),
                                 __len___0);
  }
  spin_unlock_irq(& serial->serial_lock);
  __ret___1 = 1L;
  switch (8UL) {
  case 1UL:
  tmp___0 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___1), "+m" (tmp___0->state): : "memory",
                       "cc");
  goto ldv_46521;
  case 2UL:
  tmp___1 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___1), "+m" (tmp___1->state): : "memory",
                       "cc");
  goto ldv_46521;
  case 4UL:
  tmp___2 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___1), "+m" (tmp___2->state): : "memory",
                       "cc");
  goto ldv_46521;
  case 8UL:
  tmp___3 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___1), "+m" (tmp___3->state): : "memory",
                       "cc");
  goto ldv_46521;
  default:
  __xchg_wrong_size();
  }
  ldv_46521: ;
  if ((((arg & 128UL) != 0UL && cnow.rng != cprev.rng) || ((arg & 256UL) != 0UL && cnow.dsr != cprev.dsr)) || ((arg & 64UL) != 0UL && cnow.dcd != cprev.dcd)) {
    ret = 0;
    goto ldv_46527;
  } else {
  }
  schedule();
  tmp___4 = get_current();
  tmp___5 = signal_pending(tmp___4);
  if (tmp___5 != 0) {
    ret = -512;
    goto ldv_46527;
  } else {
  }
  cprev = cnow;
  goto ldv_46528;
  ldv_46527:
  tmp___6 = get_current();
  tmp___6->state = 0L;
  remove_wait_queue(& tiocmget->waitq, & wait);
  return (ret);
}
}
static int hso_get_count(struct tty_struct *tty , struct serial_icounter_struct *icount )
{
  struct uart_icount cnow ;
  struct hso_serial *serial ;
  struct hso_tiocmget *tiocmget ;
  size_t __len ;
  void *__ret ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  tiocmget = serial->tiocmget;
  memset((void *)icount, 0, 80UL);
  if ((unsigned long )tiocmget == (unsigned long )((struct hso_tiocmget *)0)) {
    return (-2);
  } else {
  }
  spin_lock_irq(& serial->serial_lock);
  __len = 44UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& cnow), (void const *)(& tiocmget->icount), __len);
  } else {
    __ret = __builtin_memcpy((void *)(& cnow), (void const *)(& tiocmget->icount),
                             __len);
  }
  spin_unlock_irq(& serial->serial_lock);
  icount->cts = (int )cnow.cts;
  icount->dsr = (int )cnow.dsr;
  icount->rng = (int )cnow.rng;
  icount->dcd = (int )cnow.dcd;
  icount->rx = (int )cnow.rx;
  icount->tx = (int )cnow.tx;
  icount->frame = (int )cnow.frame;
  icount->overrun = (int )cnow.overrun;
  icount->parity = (int )cnow.parity;
  icount->brk = (int )cnow.brk;
  icount->buf_overrun = (int )cnow.buf_overrun;
  return (0);
}
}
static int hso_serial_tiocmget(struct tty_struct *tty )
{
  int retval ;
  struct hso_serial *serial ;
  struct hso_tiocmget *tiocmget ;
  u16 UART_state_bitmap ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    if (debug & 1) {
      printk("\016[%d:%s]: no tty structures\n", 1685, "hso_serial_tiocmget");
    } else {
    }
    return (-22);
  } else {
  }
  spin_lock_irq(& serial->serial_lock);
  retval = ((unsigned int )serial->rts_state != 0U ? 4 : 0) | ((unsigned int )serial->dtr_state != 0U ? 2 : 0);
  tiocmget = serial->tiocmget;
  if ((unsigned long )tiocmget != (unsigned long )((struct hso_tiocmget *)0)) {
    UART_state_bitmap = tiocmget->prev_UART_state_bitmap;
    if (((int )UART_state_bitmap & 8) != 0) {
      retval = retval | 128;
    } else {
    }
    if ((int )UART_state_bitmap & 1) {
      retval = retval | 64;
    } else {
    }
    if (((int )UART_state_bitmap & 2) != 0) {
      retval = retval | 256;
    } else {
    }
  } else {
  }
  spin_unlock_irq(& serial->serial_lock);
  return (retval);
}
}
static int hso_serial_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  int val ;
  unsigned long flags ;
  int if_num ;
  struct hso_serial *serial ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  val = 0;
  serial = (struct hso_serial *)tty->driver_data;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    if (debug & 1) {
      printk("\016[%d:%s]: no tty structures\n", 1717, "hso_serial_tiocmset");
    } else {
    }
    return (-22);
  } else {
  }
  if (((serial->parent)->port_spec & 255U) != 17U) {
    return (-22);
  } else {
  }
  if_num = (int )(((serial->parent)->interface)->altsetting)->desc.bInterfaceNumber;
  ldv_spin_lock();
  if ((set & 4U) != 0U) {
    serial->rts_state = 1U;
  } else {
  }
  if ((set & 2U) != 0U) {
    serial->dtr_state = 1U;
  } else {
  }
  if ((clear & 4U) != 0U) {
    serial->rts_state = 0U;
  } else {
  }
  if ((clear & 2U) != 0U) {
    serial->dtr_state = 0U;
  } else {
  }
  if ((unsigned int )serial->dtr_state != 0U) {
    val = val | 1;
  } else {
  }
  if ((unsigned int )serial->rts_state != 0U) {
    val = val | 2;
  } else {
  }
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  tmp = __create_pipe((serial->parent)->usb, 0U);
  tmp___0 = usb_control_msg((serial->parent)->usb, tmp | 2147483776U, 34, 33, (int )((__u16 )val),
                            (int )((__u16 )if_num), (void *)0, 0, 5000);
  return (tmp___0);
}
}
static int hso_serial_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct hso_serial *serial ;
  int ret ;
  {
  serial = (struct hso_serial *)tty->driver_data;
  ret = 0;
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: IOCTL cmd: %d, arg: %ld\n", 1755, "hso_serial_ioctl", cmd,
           arg);
  } else {
  }
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (-19);
  } else {
  }
  switch (cmd) {
  case 21596U:
  ret = hso_wait_modem_status(serial, arg);
  goto ldv_46566;
  default:
  ret = -515;
  goto ldv_46566;
  }
  ldv_46566: ;
  return (ret);
}
}
static void hso_kick_transmit(struct hso_serial *serial )
{
  u8 *temp ;
  unsigned long flags ;
  int res ;
  int tmp ;
  {
  ldv_spin_lock();
  if ((unsigned int )serial->tx_buffer_count == 0U) {
    goto out;
  } else {
  }
  if ((unsigned int )*((unsigned char *)serial + 142UL) != 0U) {
    goto out;
  } else {
  }
  tmp = hso_get_activity(serial->parent);
  if (tmp == -11) {
    goto out;
  } else {
  }
  temp = serial->tx_buffer;
  serial->tx_buffer = serial->tx_data;
  serial->tx_data = temp;
  serial->tx_data_count = serial->tx_buffer_count;
  serial->tx_buffer_count = 0U;
  if ((unsigned long )temp != (unsigned long )((u8 *)0U) && (unsigned long )serial->write_data != (unsigned long )((int (*)(struct hso_serial * ))0)) {
    res = (*(serial->write_data))(serial);
    if (res >= 0) {
      serial->tx_urb_used = 1U;
    } else {
    }
  } else {
  }
  out:
  spin_unlock_irqrestore(& serial->serial_lock, flags);
  return;
}
}
static int mux_device_request(struct hso_serial *serial , u8 type , u16 port , struct urb *ctrl_urb ,
                              struct usb_ctrlrequest *ctrl_req , u8 *ctrl_urb_data ,
                              u32 size )
{
  int result ;
  int pipe ;
  u32 tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if (((unsigned long )serial == (unsigned long )((struct hso_serial *)0) || (unsigned long )ctrl_urb == (unsigned long )((struct urb *)0)) || (unsigned long )ctrl_req == (unsigned long )((struct usb_ctrlrequest *)0)) {
    printk("\v%s: Wrong arguments\n", "mux_device_request");
    return (-22);
  } else {
  }
  ctrl_req->wValue = 0U;
  tmp = hso_port_to_mux((int )port);
  ctrl_req->wIndex = (unsigned short )tmp;
  ctrl_req->wLength = (unsigned short )size;
  if ((unsigned int )type == 1U) {
    ctrl_req->bRequestType = 161U;
    ctrl_req->bRequest = 1U;
    tmp___0 = __create_pipe((serial->parent)->usb, 0U);
    pipe = (int )(tmp___0 | 2147483776U);
  } else {
    ctrl_req->bRequestType = 33U;
    ctrl_req->bRequest = 0U;
    tmp___1 = __create_pipe((serial->parent)->usb, 0U);
    pipe = (int )(tmp___1 | 2147483648U);
  }
  if ((debug & 2) != 0) {
    printk("\016[%d:%s]: %s command (%02x) len: %d, port: %d\n", 1844, "mux_device_request",
           (unsigned int )type == 1U ? (char *)"Read" : (char *)"Write", (int )ctrl_req->bRequestType,
           (int )ctrl_req->wLength, (int )port);
  } else {
  }
  ctrl_urb->transfer_flags = 0U;
  usb_fill_control_urb(ctrl_urb, (serial->parent)->usb, (unsigned int )pipe, (unsigned char *)ctrl_req,
                       (void *)ctrl_urb_data, (int )size, & ctrl_callback, (void *)serial);
  result = ldv_usb_submit_urb_37(ctrl_urb, 32U);
  if (result != 0) {
    dev_err((struct device const *)(& (ctrl_urb->dev)->dev), "%s failed submit ctrl_urb %d type %d\n",
            "mux_device_request", result, (int )type);
    return (result);
  } else {
  }
  return ((int )size);
}
}
static int hso_mux_serial_read(struct hso_serial *serial )
{
  int tmp ;
  {
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (-22);
  } else {
  }
  memset((void *)serial->rx_data[0], 0, 1024UL);
  if ((unsigned int )serial->num_rx_urbs != 1U) {
    dev_err((struct device const *)(& ((serial->parent)->interface)->dev), "OLD_ERROR: mux\'d reads with multiple buffers not possible\n");
    return (0);
  } else {
  }
  tmp = mux_device_request(serial, 1, (int )((u16 )(serial->parent)->port_spec) & 255,
                           serial->rx_urb[0], & serial->ctrl_req_rx, serial->rx_data[0],
                           (u32 )serial->rx_data_length);
  return (tmp);
}
}
static void intr_callback(struct urb *urb )
{
  struct hso_shared_int *shared_int ;
  struct hso_serial *serial ;
  unsigned char *port_req ;
  int status ;
  int i ;
  {
  shared_int = (struct hso_shared_int *)urb->context;
  status = urb->status;
  usb_mark_last_busy(urb->dev);
  if ((unsigned long )shared_int == (unsigned long )((struct hso_shared_int *)0)) {
    return;
  } else {
  }
  if (status != 0) {
    handle_usb_error(status, "intr_callback", (struct hso_device *)0);
    return;
  } else {
  }
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: \n--- Got intr callback 0x%02X ---\n", 1910, "intr_callback",
           status);
  } else {
  }
  port_req = (unsigned char *)urb->transfer_buffer;
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]:  port_req = 0x%.2X\n\n", 1914, "intr_callback", (int )*port_req);
  } else {
  }
  i = 0;
  goto ldv_46600;
  ldv_46599: ;
  if (((int )*port_req >> i) & 1) {
    serial = get_serial_by_shared_int_and_type(shared_int, 1 << i);
    if ((unsigned long )serial != (unsigned long )((struct hso_serial *)0)) {
      if (debug & 1) {
        printk("\016[%d:%s]: Pending read interrupt on port %d\n\n", 1922, "intr_callback",
               i);
      } else {
      }
      spin_lock(& serial->serial_lock);
      if ((unsigned int )serial->rx_state == 0U && serial->port.count > 0) {
        if ((unsigned int )serial->rx_urb_filled[0] == 0U) {
          serial->rx_state = 1;
          hso_mux_serial_read(serial);
        } else {
          serial->rx_state = 2;
        }
      } else
      if (debug & 1) {
        printk("\016[%d:%s]: Already a read pending on port %d or port not open\n\n",
               1935, "intr_callback", i);
      } else {
      }
      spin_unlock(& serial->serial_lock);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46600: ;
  if (i <= 7) {
    goto ldv_46599;
  } else {
  }
  hso_mux_submit_intr_urb(shared_int, urb->dev, 32U);
  return;
}
}
static int hso_mux_serial_write_data(struct hso_serial *serial )
{
  int tmp ;
  {
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (-22);
  } else {
  }
  tmp = mux_device_request(serial, 0, (int )((u16 )(serial->parent)->port_spec) & 255,
                           serial->tx_urb, & serial->ctrl_req_tx, serial->tx_data,
                           (u32 )serial->tx_data_count);
  return (tmp);
}
}
static void hso_std_serial_write_bulk_callback(struct urb *urb )
{
  struct hso_serial *serial ;
  int status ;
  {
  serial = (struct hso_serial *)urb->context;
  status = urb->status;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    if (debug & 1) {
      printk("\016[%d:%s]: serial == NULL\n", 1967, "hso_std_serial_write_bulk_callback");
    } else {
    }
    return;
  } else {
  }
  spin_lock(& serial->serial_lock);
  serial->tx_urb_used = 0U;
  spin_unlock(& serial->serial_lock);
  if (status != 0) {
    handle_usb_error(status, "hso_std_serial_write_bulk_callback", serial->parent);
    return;
  } else {
  }
  hso_put_activity(serial->parent);
  tty_port_tty_wakeup(& serial->port);
  hso_kick_transmit(serial);
  if (debug & 1) {
    printk("\016[%d:%s]:  \n", 1982, "hso_std_serial_write_bulk_callback");
  } else {
  }
  return;
}
}
static int hso_std_serial_write_data(struct hso_serial *serial )
{
  int count ;
  int result ;
  unsigned int tmp ;
  {
  count = (int )serial->tx_data_count;
  tmp = __create_pipe((serial->parent)->usb, (unsigned int )(serial->out_endp)->bEndpointAddress & 127U);
  usb_fill_bulk_urb(serial->tx_urb, (serial->parent)->usb, tmp | 3221225472U, (void *)serial->tx_data,
                    (int )serial->tx_data_count, & hso_std_serial_write_bulk_callback,
                    (void *)serial);
  result = ldv_usb_submit_urb_38(serial->tx_urb, 32U);
  if (result != 0) {
    dev_warn((struct device const *)(& ((serial->parent)->usb)->dev), "Failed to submit urb - res %d\n",
             result);
    return (result);
  } else {
  }
  return (count);
}
}
static void ctrl_callback(struct urb *urb )
{
  struct hso_serial *serial ;
  struct usb_ctrlrequest *req ;
  int status ;
  {
  serial = (struct hso_serial *)urb->context;
  status = urb->status;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return;
  } else {
  }
  spin_lock(& serial->serial_lock);
  serial->tx_urb_used = 0U;
  spin_unlock(& serial->serial_lock);
  if (status != 0) {
    handle_usb_error(status, "ctrl_callback", serial->parent);
    return;
  } else {
  }
  req = (struct usb_ctrlrequest *)urb->setup_packet;
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: \n--- Got muxed ctrl callback 0x%02X ---\n", 2030, "ctrl_callback",
           status);
  } else {
  }
  if ((debug & 8) != 0) {
    printk("\016[%d:%s]: Actual length of urb = %d\n\n", 2031, "ctrl_callback", urb->actual_length);
  } else {
  }
  if ((unsigned int )req->bRequestType == 161U) {
    serial->rx_urb_filled[0] = 1U;
    spin_lock(& serial->serial_lock);
    put_rxbuf_data_and_resubmit_ctrl_urb(serial);
    spin_unlock(& serial->serial_lock);
  } else {
    hso_put_activity(serial->parent);
    tty_port_tty_wakeup(& serial->port);
    hso_kick_transmit(serial);
  }
  return;
}
}
static int put_rxbuf_data(struct urb *urb , struct hso_serial *serial )
{
  struct tty_struct *tty ;
  int write_length_remaining ;
  int curr_write_len ;
  int tmp ;
  int tmp___0 ;
  {
  write_length_remaining = 0;
  if ((unsigned long )urb == (unsigned long )((struct urb *)0) || (unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    if (debug & 1) {
      printk("\016[%d:%s]: serial = NULL\n", 2058, "put_rxbuf_data");
    } else {
    }
    return (-2);
  } else {
  }
  tty = tty_port_tty_get(& serial->port);
  write_length_remaining = (int )(urb->actual_length - (u32 )serial->curr_rx_urb_offset);
  if (debug & 1) {
    printk("\016[%d:%s]: data to push to tty\n", 2067, "put_rxbuf_data");
  } else {
  }
  goto ldv_46632;
  ldv_46631: ;
  if ((unsigned long )tty != (unsigned long )((struct tty_struct *)0)) {
    tmp = constant_test_bit(0L, (unsigned long const volatile *)(& tty->flags));
    if (tmp != 0) {
      tty_kref_put(tty);
      return (-1);
    } else {
    }
  } else {
  }
  curr_write_len = tty_insert_flip_string(& serial->port, (unsigned char const *)urb->transfer_buffer + (unsigned long )serial->curr_rx_urb_offset,
                                          (size_t )write_length_remaining);
  serial->curr_rx_urb_offset = (int )serial->curr_rx_urb_offset + (int )((u16 )curr_write_len);
  write_length_remaining = write_length_remaining - curr_write_len;
  tty_flip_buffer_push(& serial->port);
  ldv_46632: ;
  if (write_length_remaining != 0) {
    goto ldv_46631;
  } else {
  }
  tty_kref_put(tty);
  if (write_length_remaining == 0) {
    serial->curr_rx_urb_offset = 0U;
    tmp___0 = hso_urb_to_index(serial, urb);
    serial->rx_urb_filled[tmp___0] = 0U;
  } else {
  }
  return (write_length_remaining);
}
}
static void hso_log_port(struct hso_device *hso_dev )
{
  char *port_type ;
  char port_dev[20U] ;
  struct hso_net *tmp ;
  struct hso_serial *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  switch (hso_dev->port_spec & 255U) {
  case 1U:
  port_type = (char *)"Control";
  goto ldv_46640;
  case 2U:
  port_type = (char *)"Application";
  goto ldv_46640;
  case 3U:
  port_type = (char *)"GPS";
  goto ldv_46640;
  case 6U:
  port_type = (char *)"GPS control";
  goto ldv_46640;
  case 5U:
  port_type = (char *)"Application2";
  goto ldv_46640;
  case 4U:
  port_type = (char *)"PCSC";
  goto ldv_46640;
  case 16U:
  port_type = (char *)"Diagnostic";
  goto ldv_46640;
  case 9U:
  port_type = (char *)"Diagnostic2";
  goto ldv_46640;
  case 17U:
  port_type = (char *)"Modem";
  goto ldv_46640;
  case 18U:
  port_type = (char *)"Network";
  goto ldv_46640;
  default:
  port_type = (char *)"Unknown";
  goto ldv_46640;
  }
  ldv_46640: ;
  if ((hso_dev->port_spec & 255U) == 18U) {
    tmp = dev2net(hso_dev);
    sprintf((char *)(& port_dev), "%s", (char *)(& (tmp->net)->name));
  } else {
    tmp___0 = dev2ser(hso_dev);
    sprintf((char *)(& port_dev), "/dev/%s%d", (char const *)(& tty_filename), (int )tmp___0->minor);
  }
  descriptor.modname = "hso";
  descriptor.function = "hso_log_port";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11203/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/hso.o.c.prepared";
  descriptor.format = "HSO: Found %s port %s\n";
  descriptor.lineno = 2139U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& (hso_dev->interface)->dev),
                      "HSO: Found %s port %s\n", port_type, (char *)(& port_dev));
  } else {
  }
  return;
}
}
static int hso_start_net_device(struct hso_device *hso_dev )
{
  int i ;
  int result ;
  struct hso_net *hso_net ;
  struct hso_net *tmp ;
  unsigned int tmp___0 ;
  {
  result = 0;
  tmp = dev2net(hso_dev);
  hso_net = tmp;
  if ((unsigned long )hso_net == (unsigned long )((struct hso_net *)0)) {
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_46661;
  ldv_46660:
  tmp___0 = __create_pipe(hso_dev->usb, (unsigned int )(hso_net->in_endp)->bEndpointAddress & 127U);
  usb_fill_bulk_urb(hso_net->mux_bulk_rx_urb_pool[i], hso_dev->usb, tmp___0 | 3221225600U,
                    hso_net->mux_bulk_rx_buf_pool[i], 2048, & read_bulk_callback,
                    (void *)hso_net);
  result = ldv_usb_submit_urb_39(hso_net->mux_bulk_rx_urb_pool[i], 16U);
  if (result != 0) {
    dev_warn((struct device const *)(& (hso_dev->usb)->dev), "%s failed mux_bulk_rx_urb[%d] %d\n",
             "hso_start_net_device", i, result);
  } else {
  }
  i = i + 1;
  ldv_46661: ;
  if (i <= 3) {
    goto ldv_46660;
  } else {
  }
  return (result);
}
}
static int hso_stop_net_device(struct hso_device *hso_dev )
{
  int i ;
  struct hso_net *hso_net ;
  struct hso_net *tmp ;
  {
  tmp = dev2net(hso_dev);
  hso_net = tmp;
  if ((unsigned long )hso_net == (unsigned long )((struct hso_net *)0)) {
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_46669;
  ldv_46668: ;
  if ((unsigned long )hso_net->mux_bulk_rx_urb_pool[i] != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(hso_net->mux_bulk_rx_urb_pool[i]);
  } else {
  }
  i = i + 1;
  ldv_46669: ;
  if (i <= 3) {
    goto ldv_46668;
  } else {
  }
  if ((unsigned long )hso_net->mux_bulk_tx_urb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(hso_net->mux_bulk_tx_urb);
  } else {
  }
  return (0);
}
}
static int hso_start_serial_device(struct hso_device *hso_dev , gfp_t flags )
{
  int i ;
  int result ;
  struct hso_serial *serial ;
  struct hso_serial *tmp ;
  unsigned int tmp___0 ;
  {
  result = 0;
  tmp = dev2ser(hso_dev);
  serial = tmp;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (-19);
  } else {
  }
  if (((serial->parent)->port_spec & 256U) == 0U) {
    i = 0;
    goto ldv_46680;
    ldv_46679:
    tmp___0 = __create_pipe((serial->parent)->usb, (unsigned int )(serial->in_endp)->bEndpointAddress & 127U);
    usb_fill_bulk_urb(serial->rx_urb[i], (serial->parent)->usb, tmp___0 | 3221225600U,
                      (void *)serial->rx_data[i], (int )serial->rx_data_length, & hso_std_serial_read_bulk_callback,
                      (void *)serial);
    result = ldv_usb_submit_urb_40(serial->rx_urb[i], flags);
    if (result != 0) {
      dev_warn((struct device const *)(& ((serial->parent)->usb)->dev), "Failed to submit urb - res %d\n",
               result);
      goto ldv_46678;
    } else {
    }
    i = i + 1;
    ldv_46680: ;
    if ((int )serial->num_rx_urbs > i) {
      goto ldv_46679;
    } else {
    }
    ldv_46678: ;
  } else {
    mutex_lock_nested(& (serial->shared_int)->shared_int_lock, 0U);
    if ((serial->shared_int)->use_count == 0) {
      result = hso_mux_submit_intr_urb(serial->shared_int, hso_dev->usb, flags);
    } else {
    }
    (serial->shared_int)->use_count = (serial->shared_int)->use_count + 1;
    mutex_unlock(& (serial->shared_int)->shared_int_lock);
  }
  if ((unsigned long )serial->tiocmget != (unsigned long )((struct hso_tiocmget *)0)) {
    tiocmget_submit_urb(serial, serial->tiocmget, (serial->parent)->usb);
  } else {
  }
  return (result);
}
}
static int hso_stop_serial_device(struct hso_device *hso_dev )
{
  int i ;
  struct hso_serial *serial ;
  struct hso_serial *tmp ;
  struct hso_tiocmget *tiocmget ;
  struct urb *urb ;
  {
  tmp = dev2ser(hso_dev);
  serial = tmp;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_46688;
  ldv_46687: ;
  if ((unsigned long )serial->rx_urb[i] != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(serial->rx_urb[i]);
    serial->rx_urb_filled[i] = 0U;
  } else {
  }
  i = i + 1;
  ldv_46688: ;
  if ((int )serial->num_rx_urbs > i) {
    goto ldv_46687;
  } else {
  }
  serial->curr_rx_urb_idx = 0;
  serial->curr_rx_urb_offset = 0U;
  if ((unsigned long )serial->tx_urb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(serial->tx_urb);
  } else {
  }
  if ((unsigned long )serial->shared_int != (unsigned long )((struct hso_shared_int *)0)) {
    mutex_lock_nested(& (serial->shared_int)->shared_int_lock, 0U);
    if ((serial->shared_int)->use_count != 0) {
      (serial->shared_int)->use_count = (serial->shared_int)->use_count - 1;
      if ((serial->shared_int)->use_count == 0) {
        urb = (serial->shared_int)->shared_intr_urb;
        if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
          usb_kill_urb(urb);
        } else {
        }
      } else {
      }
    } else {
    }
    mutex_unlock(& (serial->shared_int)->shared_int_lock);
  } else {
  }
  tiocmget = serial->tiocmget;
  if ((unsigned long )tiocmget != (unsigned long )((struct hso_tiocmget *)0)) {
    __wake_up(& tiocmget->waitq, 1U, 1, (void *)0);
    usb_kill_urb(tiocmget->urb);
  } else {
  }
  return (0);
}
}
static void hso_serial_common_free(struct hso_serial *serial )
{
  int i ;
  {
  if ((unsigned long )(serial->parent)->dev != (unsigned long )((struct device *)0)) {
    device_remove_file((serial->parent)->dev, (struct device_attribute const *)(& dev_attr_hsotype));
  } else {
  }
  tty_unregister_device(tty_drv, (unsigned int )serial->minor);
  i = 0;
  goto ldv_46696;
  ldv_46695:
  usb_free_urb(serial->rx_urb[i]);
  kfree((void const *)serial->rx_data[i]);
  i = i + 1;
  ldv_46696: ;
  if ((int )serial->num_rx_urbs > i) {
    goto ldv_46695;
  } else {
  }
  usb_free_urb(serial->tx_urb);
  kfree((void const *)serial->tx_data);
  tty_port_destroy(& serial->port);
  return;
}
}
static int hso_serial_common_create(struct hso_serial *serial , int num_urbs , int rx_size ,
                                    int tx_size )
{
  struct device *dev ;
  int minor ;
  int i ;
  struct lock_class_key __key ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tty_port_init(& serial->port);
  minor = get_free_serial_index();
  if (minor < 0) {
    goto exit;
  } else {
  }
  (serial->parent)->dev = tty_port_register_device(& serial->port, tty_drv, (unsigned int )minor,
                                                   & ((serial->parent)->interface)->dev);
  dev = (serial->parent)->dev;
  dev_set_drvdata(dev, (void *)serial->parent);
  i = device_create_file(dev, (struct device_attribute const *)(& dev_attr_hsotype));
  serial->minor = (u8 )minor;
  serial->magic = 1213419313;
  spinlock_check(& serial->serial_lock);
  __raw_spin_lock_init(& serial->serial_lock.ldv_6347.rlock, "&(&serial->serial_lock)->rlock",
                       & __key);
  serial->num_rx_urbs = (u8 )num_urbs;
  serial->rx_data_length = (u16 )rx_size;
  i = 0;
  goto ldv_46710;
  ldv_46709:
  serial->rx_urb[i] = ldv_usb_alloc_urb_41(0, 208U);
  if ((unsigned long )serial->rx_urb[i] == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)dev, "Could not allocate urb?\n");
    goto exit;
  } else {
  }
  (serial->rx_urb[i])->transfer_buffer = (void *)0;
  (serial->rx_urb[i])->transfer_buffer_length = 0U;
  tmp = kzalloc((size_t )serial->rx_data_length, 208U);
  serial->rx_data[i] = (u8 *)tmp;
  if ((unsigned long )serial->rx_data[i] == (unsigned long )((u8 *)0U)) {
    goto exit;
  } else {
  }
  i = i + 1;
  ldv_46710: ;
  if ((int )serial->num_rx_urbs > i) {
    goto ldv_46709;
  } else {
  }
  serial->tx_urb = ldv_usb_alloc_urb_42(0, 208U);
  if ((unsigned long )serial->tx_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)dev, "Could not allocate urb?\n");
    goto exit;
  } else {
  }
  (serial->tx_urb)->transfer_buffer = (void *)0;
  (serial->tx_urb)->transfer_buffer_length = 0U;
  serial->tx_data_count = 0U;
  serial->tx_buffer_count = 0U;
  serial->tx_data_length = (u16 )tx_size;
  tmp___0 = kzalloc((size_t )serial->tx_data_length, 208U);
  serial->tx_data = (u8 *)tmp___0;
  if ((unsigned long )serial->tx_data == (unsigned long )((u8 *)0U)) {
    goto exit;
  } else {
  }
  tmp___1 = kzalloc((size_t )serial->tx_data_length, 208U);
  serial->tx_buffer = (u8 *)tmp___1;
  if ((unsigned long )serial->tx_buffer == (unsigned long )((u8 *)0U)) {
    goto exit;
  } else {
  }
  return (0);
  exit:
  hso_serial_common_free(serial);
  return (-1);
}
}
static struct hso_device *hso_create_device(struct usb_interface *intf , int port_spec )
{
  struct hso_device *hso_dev ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_2 ;
  {
  tmp = kzalloc(456UL, 32U);
  hso_dev = (struct hso_device *)tmp;
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    return ((struct hso_device *)0);
  } else {
  }
  hso_dev->port_spec = (u32 )port_spec;
  hso_dev->usb = interface_to_usbdev(intf);
  hso_dev->interface = intf;
  kref_init(& hso_dev->ref);
  __mutex_init(& hso_dev->mutex, "&hso_dev->mutex", & __key);
  __init_work(& hso_dev->async_get_intf, 0);
  __constr_expr_0.counter = 137438953408L;
  hso_dev->async_get_intf.data = __constr_expr_0;
  lockdep_init_map(& hso_dev->async_get_intf.lockdep_map, "(&hso_dev->async_get_intf)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& hso_dev->async_get_intf.entry);
  hso_dev->async_get_intf.func = & async_get_intf;
  __init_work(& hso_dev->async_put_intf, 0);
  __constr_expr_1.counter = 137438953408L;
  hso_dev->async_put_intf.data = __constr_expr_1;
  lockdep_init_map(& hso_dev->async_put_intf.lockdep_map, "(&hso_dev->async_put_intf)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& hso_dev->async_put_intf.entry);
  hso_dev->async_put_intf.func = & async_put_intf;
  __init_work(& hso_dev->reset_device, 0);
  __constr_expr_2.counter = 137438953408L;
  hso_dev->reset_device.data = __constr_expr_2;
  lockdep_init_map(& hso_dev->reset_device.lockdep_map, "(&hso_dev->reset_device)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& hso_dev->reset_device.entry);
  hso_dev->reset_device.func = & reset_device;
  return (hso_dev);
}
}
static int remove_net_device(struct hso_device *hso_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_46730;
  ldv_46729: ;
  if ((unsigned long )network_table[i] == (unsigned long )hso_dev) {
    network_table[i] = (struct hso_device *)0;
    goto ldv_46728;
  } else {
  }
  i = i + 1;
  ldv_46730: ;
  if (i <= 9) {
    goto ldv_46729;
  } else {
  }
  ldv_46728: ;
  if (i == 10) {
    return (-1);
  } else {
  }
  return (0);
}
}
static void hso_free_net_device(struct hso_device *hso_dev )
{
  int i ;
  struct hso_net *hso_net ;
  struct hso_net *tmp ;
  {
  tmp = dev2net(hso_dev);
  hso_net = tmp;
  if ((unsigned long )hso_net == (unsigned long )((struct hso_net *)0)) {
    return;
  } else {
  }
  remove_net_device(hso_net->parent);
  if ((unsigned long )hso_net->net != (unsigned long )((struct net_device *)0)) {
    ldv_unregister_netdev_43(hso_net->net);
  } else {
  }
  i = 0;
  goto ldv_46737;
  ldv_46736:
  usb_free_urb(hso_net->mux_bulk_rx_urb_pool[i]);
  kfree((void const *)hso_net->mux_bulk_rx_buf_pool[i]);
  hso_net->mux_bulk_rx_buf_pool[i] = (void *)0;
  i = i + 1;
  ldv_46737: ;
  if (i <= 3) {
    goto ldv_46736;
  } else {
  }
  usb_free_urb(hso_net->mux_bulk_tx_urb);
  kfree((void const *)hso_net->mux_bulk_tx_buf);
  hso_net->mux_bulk_tx_buf = (void *)0;
  if ((unsigned long )hso_net->net != (unsigned long )((struct net_device *)0)) {
    ldv_free_netdev_44(hso_net->net);
  } else {
  }
  kfree((void const *)hso_dev);
  return;
}
}
static struct net_device_ops const hso_netdev_ops =
     {0, 0, & hso_net_open, & hso_net_close, & hso_net_start_xmit, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & hso_net_tx_timeout, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static void hso_net_init(struct net_device *net )
{
  struct hso_net *hso_net ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = netdev_priv((struct net_device const *)net);
  hso_net = (struct hso_net *)tmp;
  if (debug & 1) {
    printk("\016[%d:%s]: sizeof hso_net is %d\n", 2456, "hso_net_init", 248);
  } else {
  }
  net->netdev_ops = & hso_netdev_ops;
  net->watchdog_timeo = 2500;
  net->flags = 4240U;
  net->type = 65534U;
  net->mtu = 1486U;
  net->tx_queue_len = 10UL;
  net->ethtool_ops = & ops;
  spinlock_check(& hso_net->net_lock);
  __raw_spin_lock_init(& hso_net->net_lock.ldv_6347.rlock, "&(&hso_net->net_lock)->rlock",
                       & __key);
  return;
}
}
static int add_net_device(struct hso_device *hso_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_46752;
  ldv_46751: ;
  if ((unsigned long )network_table[i] == (unsigned long )((struct hso_device *)0)) {
    network_table[i] = hso_dev;
    goto ldv_46750;
  } else {
  }
  i = i + 1;
  ldv_46752: ;
  if (i <= 9) {
    goto ldv_46751;
  } else {
  }
  ldv_46750: ;
  if (i == 10) {
    return (-1);
  } else {
  }
  return (0);
}
}
static int hso_rfkill_set_block(void *data , bool blocked )
{
  struct hso_device *hso_dev ;
  int enabled ;
  int rv ;
  unsigned int tmp ;
  {
  hso_dev = (struct hso_device *)data;
  enabled = ! blocked;
  mutex_lock_nested(& hso_dev->mutex, 0U);
  if ((unsigned int )hso_dev->usb_gone != 0U) {
    rv = 0;
  } else {
    tmp = __create_pipe(hso_dev->usb, 0U);
    rv = usb_control_msg(hso_dev->usb, tmp | 2147483776U, enabled != 0 ? 130 : 129,
                         64, 0, 0, (void *)0, 0, 5000);
  }
  mutex_unlock(& hso_dev->mutex);
  return (rv);
}
}
static struct rfkill_ops const hso_rfkill_ops = {0, 0, & hso_rfkill_set_block};
static void hso_create_rfkill(struct hso_device *hso_dev , struct usb_interface *interface )
{
  struct hso_net *hso_net ;
  struct hso_net *tmp ;
  struct device *dev ;
  char *rfkn ;
  void *tmp___0 ;
  struct usb_device *tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev2net(hso_dev);
  hso_net = tmp;
  dev = & (hso_net->net)->dev;
  tmp___0 = kzalloc(20UL, 208U);
  rfkn = (char *)tmp___0;
  if ((unsigned long )rfkn == (unsigned long )((char *)0)) {
    dev_err((struct device const *)dev, "%s - Out of memory\n", "hso_create_rfkill");
  } else {
  }
  snprintf(rfkn, 20UL, "hso-%d", (int )(interface->altsetting)->desc.bInterfaceNumber);
  tmp___1 = interface_to_usbdev(interface);
  hso_net->rfkill = rfkill_alloc((char const *)rfkn, & tmp___1->dev, 5, & hso_rfkill_ops,
                                 (void *)hso_dev);
  if ((unsigned long )hso_net->rfkill == (unsigned long )((struct rfkill *)0)) {
    dev_err((struct device const *)dev, "%s - Out of memory\n", "hso_create_rfkill");
    kfree((void const *)rfkn);
    return;
  } else {
  }
  tmp___2 = rfkill_register(hso_net->rfkill);
  if (tmp___2 < 0) {
    rfkill_destroy(hso_net->rfkill);
    kfree((void const *)rfkn);
    hso_net->rfkill = (struct rfkill *)0;
    dev_err((struct device const *)dev, "%s - Failed to register rfkill\n", "hso_create_rfkill");
    return;
  } else {
  }
  return;
}
}
static struct device_type hso_type = {"wwan", 0, 0, 0, 0, 0};
static struct hso_device *hso_create_net_device(struct usb_interface *interface ,
                                                int port_spec )
{
  int result ;
  int i ;
  struct net_device *net ;
  struct hso_net *hso_net ;
  struct hso_device *hso_dev ;
  void *tmp ;
  {
  hso_dev = hso_create_device(interface, port_spec);
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    return ((struct hso_device *)0);
  } else {
  }
  net = alloc_netdev_mqs(248, "hso%d", & hso_net_init, 1U, 1U);
  if ((unsigned long )net == (unsigned long )((struct net_device *)0)) {
    dev_err((struct device const *)(& interface->dev), "Unable to create ethernet device\n");
    goto exit;
  } else {
  }
  tmp = netdev_priv((struct net_device const *)net);
  hso_net = (struct hso_net *)tmp;
  hso_dev->port_data.dev_net = hso_net;
  hso_net->net = net;
  hso_net->parent = hso_dev;
  hso_net->in_endp = hso_get_ep(interface, 2, 128);
  if ((unsigned long )hso_net->in_endp == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "Can\'t find BULK IN endpoint\n");
    goto exit;
  } else {
  }
  hso_net->out_endp = hso_get_ep(interface, 2, 0);
  if ((unsigned long )hso_net->out_endp == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "Can\'t find BULK OUT endpoint\n");
    goto exit;
  } else {
  }
  net->dev.parent = & interface->dev;
  net->dev.type = (struct device_type const *)(& hso_type);
  result = ldv_register_netdev_45(net);
  if (result != 0) {
    dev_err((struct device const *)(& interface->dev), "Failed to register device\n");
    goto exit;
  } else {
  }
  i = 0;
  goto ldv_46781;
  ldv_46780:
  hso_net->mux_bulk_rx_urb_pool[i] = ldv_usb_alloc_urb_46(0, 208U);
  if ((unsigned long )hso_net->mux_bulk_rx_urb_pool[i] == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& interface->dev), "Could not allocate rx urb\n");
    goto exit;
  } else {
  }
  hso_net->mux_bulk_rx_buf_pool[i] = kzalloc(2048UL, 208U);
  if ((unsigned long )hso_net->mux_bulk_rx_buf_pool[i] == (unsigned long )((void *)0)) {
    goto exit;
  } else {
  }
  i = i + 1;
  ldv_46781: ;
  if (i <= 3) {
    goto ldv_46780;
  } else {
  }
  hso_net->mux_bulk_tx_urb = ldv_usb_alloc_urb_47(0, 208U);
  if ((unsigned long )hso_net->mux_bulk_tx_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& interface->dev), "Could not allocate tx urb\n");
    goto exit;
  } else {
  }
  hso_net->mux_bulk_tx_buf = kzalloc(2048UL, 208U);
  if ((unsigned long )hso_net->mux_bulk_tx_buf == (unsigned long )((void *)0)) {
    goto exit;
  } else {
  }
  add_net_device(hso_dev);
  hso_log_port(hso_dev);
  hso_create_rfkill(hso_dev, interface);
  return (hso_dev);
  exit:
  hso_free_net_device(hso_dev);
  return ((struct hso_device *)0);
}
}
static void hso_free_tiomget(struct hso_serial *serial )
{
  struct hso_tiocmget *tiocmget ;
  {
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return;
  } else {
  }
  tiocmget = serial->tiocmget;
  if ((unsigned long )tiocmget != (unsigned long )((struct hso_tiocmget *)0)) {
    usb_free_urb(tiocmget->urb);
    tiocmget->urb = (struct urb *)0;
    serial->tiocmget = (struct hso_tiocmget *)0;
    kfree((void const *)tiocmget);
  } else {
  }
  return;
}
}
static void hso_free_serial_device(struct hso_device *hso_dev )
{
  struct hso_serial *serial ;
  struct hso_serial *tmp ;
  {
  tmp = dev2ser(hso_dev);
  serial = tmp;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    return;
  } else {
  }
  set_serial_by_index((unsigned int )serial->minor, (struct hso_serial *)0);
  hso_serial_common_free(serial);
  if ((unsigned long )serial->shared_int != (unsigned long )((struct hso_shared_int *)0)) {
    mutex_lock_nested(& (serial->shared_int)->shared_int_lock, 0U);
    (serial->shared_int)->ref_count = (serial->shared_int)->ref_count - 1;
    if ((serial->shared_int)->ref_count == 0) {
      hso_free_shared_int(serial->shared_int);
    } else {
      mutex_unlock(& (serial->shared_int)->shared_int_lock);
    }
  } else {
  }
  hso_free_tiomget(serial);
  kfree((void const *)serial);
  kfree((void const *)hso_dev);
  return;
}
}
static struct hso_device *hso_create_bulk_serial_device(struct usb_interface *interface ,
                                                        int port )
{
  struct hso_device *hso_dev ;
  struct hso_serial *serial ;
  int num_urbs ;
  struct hso_tiocmget *tiocmget ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___1 ;
  struct usb_endpoint_descriptor *tmp___2 ;
  {
  hso_dev = hso_create_device(interface, port);
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    return ((struct hso_device *)0);
  } else {
  }
  tmp = kzalloc(1424UL, 208U);
  serial = (struct hso_serial *)tmp;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    goto exit;
  } else {
  }
  serial->parent = hso_dev;
  hso_dev->port_data.dev_serial = serial;
  if ((port & 255) == 17) {
    num_urbs = 2;
    tmp___0 = kzalloc(336UL, 208U);
    serial->tiocmget = (struct hso_tiocmget *)tmp___0;
    if ((unsigned long )serial->tiocmget != (unsigned long )((struct hso_tiocmget *)0)) {
      tiocmget = serial->tiocmget;
      tiocmget->urb = ldv_usb_alloc_urb_48(0, 208U);
      if ((unsigned long )tiocmget->urb != (unsigned long )((struct urb *)0)) {
        __mutex_init(& tiocmget->mutex, "&tiocmget->mutex", & __key);
        __init_waitqueue_head(& tiocmget->waitq, "&tiocmget->waitq", & __key___0);
        tiocmget->endp = hso_get_ep(interface, 3, 128);
      } else {
        hso_free_tiomget(serial);
      }
    } else {
    }
  } else {
    num_urbs = 1;
  }
  tmp___1 = hso_serial_common_create(serial, num_urbs, 4096, 8192);
  if (tmp___1 != 0) {
    goto exit;
  } else {
  }
  serial->in_endp = hso_get_ep(interface, 2, 128);
  if ((unsigned long )serial->in_endp == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "Failed to find BULK IN ep\n");
    goto exit2;
  } else {
  }
  tmp___2 = hso_get_ep(interface, 2, 0);
  serial->out_endp = tmp___2;
  if ((unsigned long )tmp___2 == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "Failed to find BULK IN ep\n");
    goto exit2;
  } else {
  }
  serial->write_data = & hso_std_serial_write_data;
  set_serial_by_index((unsigned int )serial->minor, serial);
  hso_log_port(hso_dev);
  return (hso_dev);
  exit2:
  hso_serial_common_free(serial);
  exit:
  hso_free_tiomget(serial);
  kfree((void const *)serial);
  kfree((void const *)hso_dev);
  return ((struct hso_device *)0);
}
}
static struct hso_device *hso_create_mux_serial_device(struct usb_interface *interface ,
                                                       int port , struct hso_shared_int *mux )
{
  struct hso_device *hso_dev ;
  struct hso_serial *serial ;
  int port_spec ;
  u32 tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  port_spec = 256;
  port_spec = port_spec & -256;
  tmp = hso_mux_to_port(port);
  port_spec = (int )(tmp | (u32 )port_spec);
  if ((port_spec & 255) == 0) {
    return ((struct hso_device *)0);
  } else {
  }
  hso_dev = hso_create_device(interface, port_spec);
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    return ((struct hso_device *)0);
  } else {
  }
  tmp___0 = kzalloc(1424UL, 208U);
  serial = (struct hso_serial *)tmp___0;
  if ((unsigned long )serial == (unsigned long )((struct hso_serial *)0)) {
    goto exit;
  } else {
  }
  hso_dev->port_data.dev_serial = serial;
  serial->parent = hso_dev;
  tmp___1 = hso_serial_common_create(serial, 1, 1024, 64);
  if (tmp___1 != 0) {
    goto exit;
  } else {
  }
  serial->tx_data_length = (u16 )((int )serial->tx_data_length - 1);
  serial->write_data = & hso_mux_serial_write_data;
  serial->shared_int = mux;
  mutex_lock_nested(& (serial->shared_int)->shared_int_lock, 0U);
  (serial->shared_int)->ref_count = (serial->shared_int)->ref_count + 1;
  mutex_unlock(& (serial->shared_int)->shared_int_lock);
  set_serial_by_index((unsigned int )serial->minor, serial);
  hso_log_port(hso_dev);
  return (hso_dev);
  exit: ;
  if ((unsigned long )serial != (unsigned long )((struct hso_serial *)0)) {
    tty_unregister_device(tty_drv, (unsigned int )serial->minor);
    kfree((void const *)serial);
  } else {
  }
  if ((unsigned long )hso_dev != (unsigned long )((struct hso_device *)0)) {
    kfree((void const *)hso_dev);
  } else {
  }
  return ((struct hso_device *)0);
}
}
static void hso_free_shared_int(struct hso_shared_int *mux )
{
  {
  usb_free_urb(mux->shared_intr_urb);
  kfree((void const *)mux->shared_intr_buf);
  mutex_unlock(& mux->shared_int_lock);
  kfree((void const *)mux);
  return;
}
}
static struct hso_shared_int *hso_create_shared_int(struct usb_interface *interface )
{
  struct hso_shared_int *mux ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(208UL, 208U);
  mux = (struct hso_shared_int *)tmp;
  if ((unsigned long )mux == (unsigned long )((struct hso_shared_int *)0)) {
    return ((struct hso_shared_int *)0);
  } else {
  }
  mux->intr_endp = hso_get_ep(interface, 3, 128);
  if ((unsigned long )mux->intr_endp == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "Can\'t find INT IN endpoint\n");
    goto exit;
  } else {
  }
  mux->shared_intr_urb = ldv_usb_alloc_urb_49(0, 208U);
  if ((unsigned long )mux->shared_intr_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& interface->dev), "Could not allocate intr urb?\n");
    goto exit;
  } else {
  }
  mux->shared_intr_buf = kzalloc((size_t )(mux->intr_endp)->wMaxPacketSize, 208U);
  if ((unsigned long )mux->shared_intr_buf == (unsigned long )((void *)0)) {
    goto exit;
  } else {
  }
  __mutex_init(& mux->shared_int_lock, "&mux->shared_int_lock", & __key);
  return (mux);
  exit:
  kfree((void const *)mux->shared_intr_buf);
  usb_free_urb(mux->shared_intr_urb);
  kfree((void const *)mux);
  return ((struct hso_shared_int *)0);
}
}
static int hso_get_config_data(struct usb_interface *interface )
{
  struct usb_device *usbdev ;
  struct usb_device *tmp ;
  u8 *config_data ;
  void *tmp___0 ;
  u32 if_num ;
  s32 result ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  tmp = interface_to_usbdev(interface);
  usbdev = tmp;
  tmp___0 = kmalloc(17UL, 208U);
  config_data = (u8 *)tmp___0;
  if_num = (u32 )(interface->altsetting)->desc.bInterfaceNumber;
  if ((unsigned long )config_data == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___1 = __create_pipe(usbdev, 0U);
  tmp___2 = usb_control_msg(usbdev, tmp___1 | 2147483776U, 134, 192, 0, 0, (void *)config_data,
                            17, 5000);
  if (tmp___2 != 17) {
    kfree((void const *)config_data);
    return (-5);
  } else {
  }
  switch ((int )*(config_data + (unsigned long )if_num)) {
  case 0:
  result = 0;
  goto ldv_46829;
  case 1:
  result = 16;
  goto ldv_46829;
  case 2:
  result = 3;
  goto ldv_46829;
  case 3:
  result = 6;
  goto ldv_46829;
  case 4:
  result = 2;
  goto ldv_46829;
  case 5:
  result = 5;
  goto ldv_46829;
  case 6:
  result = 1;
  goto ldv_46829;
  case 7:
  result = 18;
  goto ldv_46829;
  case 8:
  result = 17;
  goto ldv_46829;
  case 9:
  result = 7;
  goto ldv_46829;
  case 10:
  result = 4;
  goto ldv_46829;
  case 11:
  result = 8;
  goto ldv_46829;
  default:
  result = 0;
  }
  ldv_46829: ;
  if (result != 0) {
    result = result | 512;
  } else {
  }
  if ((int )*(config_data + 16UL) & 1) {
    result = result | 16777216;
  } else {
  }
  kfree((void const *)config_data);
  return (result);
}
}
static int hso_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  int mux ;
  int i ;
  int if_num ;
  int port_spec ;
  unsigned char port_mask ;
  struct hso_device *hso_dev ;
  struct hso_shared_int *shared_int ;
  struct hso_device *tmp_dev ;
  struct usb_device *tmp ;
  int tmp___0 ;
  {
  hso_dev = (struct hso_device *)0;
  tmp_dev = (struct hso_device *)0;
  if ((unsigned int )(interface->cur_altsetting)->desc.bInterfaceClass != 255U) {
    dev_err((struct device const *)(& interface->dev), "Not our interface\n");
    return (-19);
  } else {
  }
  if_num = (int )(interface->altsetting)->desc.bInterfaceNumber;
  if ((unsigned long )id->driver_info != 0UL) {
    port_spec = (int )*((u32 *)((unsigned long )if_num + (unsigned long )id->driver_info));
  } else {
    port_spec = hso_get_config_data(interface);
  }
  if (interface->num_altsetting > 1U) {
    tmp = interface_to_usbdev(interface);
    usb_set_interface(tmp, if_num, 1);
  } else {
  }
  interface->needs_remote_wakeup = 1U;
  switch (port_spec & 65280) {
  case 256: ;
  if ((port_spec & 255) == 18) {
    if (disable_net == 0) {
      hso_dev = hso_create_net_device(interface, port_spec);
      if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
        goto exit;
      } else {
      }
      tmp_dev = hso_dev;
    } else {
    }
  } else {
  }
  tmp___0 = hso_get_mux_ports(interface, & port_mask);
  if (tmp___0 != 0) {
    goto exit;
  } else {
  }
  shared_int = hso_create_shared_int(interface);
  if ((unsigned long )shared_int == (unsigned long )((struct hso_shared_int *)0)) {
    goto exit;
  } else {
  }
  i = 1;
  mux = 0;
  goto ldv_46857;
  ldv_46856: ;
  if (((int )port_mask & i) != 0) {
    hso_dev = hso_create_mux_serial_device(interface, i, shared_int);
    if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
      goto exit;
    } else {
    }
  } else {
  }
  i = i << 1;
  mux = mux + 1;
  ldv_46857: ;
  if (i <= 255) {
    goto ldv_46856;
  } else {
  }
  if ((unsigned long )tmp_dev != (unsigned long )((struct hso_device *)0)) {
    hso_dev = tmp_dev;
  } else {
  }
  goto ldv_46859;
  case 512: ;
  if ((port_spec & 255) == 18) {
    if (disable_net == 0) {
      hso_dev = hso_create_net_device(interface, port_spec);
    } else {
    }
  } else {
    hso_dev = hso_create_bulk_serial_device(interface, port_spec);
  }
  if ((unsigned long )hso_dev == (unsigned long )((struct hso_device *)0)) {
    goto exit;
  } else {
  }
  goto ldv_46859;
  default: ;
  goto exit;
  }
  ldv_46859:
  usb_set_intfdata(interface, (void *)hso_dev);
  return (0);
  exit:
  hso_free_interface(interface);
  return (-19);
}
}
static void hso_disconnect(struct usb_interface *interface )
{
  {
  hso_free_interface(interface);
  usb_set_intfdata(interface, (void *)0);
  return;
}
}
static void async_get_intf(struct work_struct *data )
{
  struct hso_device *hso_dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)data;
  hso_dev = (struct hso_device *)__mptr + 0xfffffffffffffff0UL;
  usb_autopm_get_interface(hso_dev->interface);
  return;
}
}
static void async_put_intf(struct work_struct *data )
{
  struct hso_device *hso_dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)data;
  hso_dev = (struct hso_device *)__mptr + 0xffffffffffffffa0UL;
  usb_autopm_put_interface(hso_dev->interface);
  return;
}
}
static int hso_get_activity(struct hso_device *hso_dev )
{
  {
  if ((unsigned int )(hso_dev->usb)->state == 8U) {
    if ((unsigned int )hso_dev->is_active == 0U) {
      hso_dev->is_active = 1U;
      schedule_work(& hso_dev->async_get_intf);
    } else {
    }
  } else {
  }
  if ((unsigned int )(hso_dev->usb)->state != 7U) {
    return (-11);
  } else {
  }
  usb_mark_last_busy(hso_dev->usb);
  return (0);
}
}
static int hso_put_activity(struct hso_device *hso_dev )
{
  {
  if ((unsigned int )(hso_dev->usb)->state != 8U) {
    if ((unsigned int )hso_dev->is_active != 0U) {
      hso_dev->is_active = 0U;
      schedule_work(& hso_dev->async_put_intf);
      return (-11);
    } else {
    }
  } else {
  }
  hso_dev->is_active = 0U;
  return (0);
}
}
static int hso_suspend(struct usb_interface *iface , pm_message_t message )
{
  int i ;
  int result ;
  {
  i = 0;
  goto ldv_46891;
  ldv_46890: ;
  if ((unsigned long )serial_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(serial_table[i])->interface == (unsigned long )iface) {
    result = hso_stop_serial_device(serial_table[i]);
    if (result != 0) {
      goto out;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46891: ;
  if (i <= 255) {
    goto ldv_46890;
  } else {
  }
  i = 0;
  goto ldv_46894;
  ldv_46893: ;
  if ((unsigned long )network_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(network_table[i])->interface == (unsigned long )iface) {
    result = hso_stop_net_device(network_table[i]);
    if (result != 0) {
      goto out;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46894: ;
  if (i <= 9) {
    goto ldv_46893;
  } else {
  }
  out: ;
  return (0);
}
}
static int hso_resume(struct usb_interface *iface )
{
  int i ;
  int result ;
  struct hso_net *hso_net ;
  struct hso_serial *tmp ;
  struct hso_serial *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  result = 0;
  i = 0;
  goto ldv_46904;
  ldv_46903: ;
  if ((unsigned long )serial_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(serial_table[i])->interface == (unsigned long )iface) {
    tmp___0 = dev2ser(serial_table[i]);
    if (tmp___0->port.count != 0) {
      result = hso_start_serial_device(serial_table[i], 16U);
      tmp = dev2ser(serial_table[i]);
      hso_kick_transmit(tmp);
      if (result != 0) {
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46904: ;
  if (i <= 255) {
    goto ldv_46903;
  } else {
  }
  i = 0;
  goto ldv_46909;
  ldv_46908: ;
  if ((unsigned long )network_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(network_table[i])->interface == (unsigned long )iface) {
    hso_net = dev2net(network_table[i]);
    if ((int )hso_net->flags & 1) {
      if ((unsigned long )hso_net->skb_tx_buf != (unsigned long )((struct sk_buff *)0)) {
        descriptor.modname = "hso";
        descriptor.function = "hso_resume";
        descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/11203/dscv_tempdir/dscv/ri/43_2a/drivers/net/usb/hso.o.c.prepared";
        descriptor.format = "Transmitting lingering data\n";
        descriptor.lineno = 3122U;
        descriptor.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_dev_dbg(& descriptor, (struct device const *)(& iface->dev),
                            "Transmitting lingering data\n");
        } else {
        }
        hso_net_start_xmit(hso_net->skb_tx_buf, hso_net->net);
        hso_net->skb_tx_buf = (struct sk_buff *)0;
      } else {
      }
      result = hso_start_net_device(network_table[i]);
      if (result != 0) {
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46909: ;
  if (i <= 9) {
    goto ldv_46908;
  } else {
  }
  out: ;
  return (result);
}
}
static void reset_device(struct work_struct *data )
{
  struct hso_device *hso_dev ;
  struct work_struct const *__mptr ;
  struct usb_device *usb ;
  int result ;
  {
  __mptr = (struct work_struct const *)data;
  hso_dev = (struct hso_device *)__mptr + 0xffffffffffffff50UL;
  usb = hso_dev->usb;
  if ((unsigned int )hso_dev->usb_gone != 0U) {
    if (debug & 1) {
      printk("\016[%d:%s]: No reset during disconnect\n\n", 3146, "reset_device");
    } else {
    }
  } else {
    result = usb_lock_device_for_reset(usb, (struct usb_interface const *)hso_dev->interface);
    if (result < 0) {
      if (debug & 1) {
        printk("\016[%d:%s]: unable to lock device for reset: %d\n\n", 3150, "reset_device",
               result);
      } else {
      }
    } else {
      usb_reset_device(usb);
      device_unlock(& usb->dev);
    }
  }
  return;
}
}
static void hso_serial_ref_free(struct kref *ref )
{
  struct hso_device *hso_dev ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  hso_dev = (struct hso_device *)__mptr + 0xfffffffffffffee8UL;
  hso_free_serial_device(hso_dev);
  return;
}
}
static void hso_free_interface(struct usb_interface *interface )
{
  struct hso_serial *hso_dev ;
  int i ;
  struct rfkill *rfk ;
  struct hso_net *tmp ;
  struct hso_net *tmp___0 ;
  {
  i = 0;
  goto ldv_46932;
  ldv_46931: ;
  if ((unsigned long )serial_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(serial_table[i])->interface == (unsigned long )interface) {
    hso_dev = dev2ser(serial_table[i]);
    tty_port_tty_hangup(& hso_dev->port, 0);
    mutex_lock_nested(& (hso_dev->parent)->mutex, 0U);
    (hso_dev->parent)->usb_gone = 1U;
    mutex_unlock(& (hso_dev->parent)->mutex);
    kref_put(& (serial_table[i])->ref, & hso_serial_ref_free);
  } else {
  }
  i = i + 1;
  ldv_46932: ;
  if (i <= 255) {
    goto ldv_46931;
  } else {
  }
  i = 0;
  goto ldv_46936;
  ldv_46935: ;
  if ((unsigned long )network_table[i] != (unsigned long )((struct hso_device *)0) && (unsigned long )(network_table[i])->interface == (unsigned long )interface) {
    tmp = dev2net(network_table[i]);
    rfk = tmp->rfkill;
    tmp___0 = dev2net(network_table[i]);
    netif_stop_queue(tmp___0->net);
    hso_stop_net_device(network_table[i]);
    cancel_work_sync(& (network_table[i])->async_put_intf);
    cancel_work_sync(& (network_table[i])->async_get_intf);
    if ((unsigned long )rfk != (unsigned long )((struct rfkill *)0)) {
      rfkill_unregister(rfk);
      rfkill_destroy(rfk);
    } else {
    }
    hso_free_net_device(network_table[i]);
  } else {
  }
  i = i + 1;
  ldv_46936: ;
  if (i <= 9) {
    goto ldv_46935;
  } else {
  }
  return;
}
}
static struct usb_endpoint_descriptor *hso_get_ep(struct usb_interface *intf , int type ,
                                                  int dir )
{
  int i ;
  struct usb_host_interface *iface ;
  struct usb_endpoint_descriptor *endp ;
  int tmp ;
  {
  iface = intf->cur_altsetting;
  i = 0;
  goto ldv_46947;
  ldv_46946:
  endp = & (iface->endpoint + (unsigned long )i)->desc;
  if (((int )endp->bEndpointAddress & 128) == dir) {
    tmp = usb_endpoint_type((struct usb_endpoint_descriptor const *)endp);
    if (tmp == type) {
      return (endp);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_46947: ;
  if ((int )iface->desc.bNumEndpoints > i) {
    goto ldv_46946;
  } else {
  }
  return ((struct usb_endpoint_descriptor *)0);
}
}
static int hso_get_mux_ports(struct usb_interface *intf , unsigned char *ports )
{
  int i ;
  struct usb_host_interface *iface ;
  {
  iface = intf->cur_altsetting;
  if (iface->extralen == 3) {
    *ports = *(iface->extra + 2UL);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_46956;
  ldv_46955: ;
  if ((iface->endpoint + (unsigned long )i)->extralen == 3) {
    *ports = *((iface->endpoint + (unsigned long )i)->extra + 2UL);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_46956: ;
  if ((int )iface->desc.bNumEndpoints > i) {
    goto ldv_46955;
  } else {
  }
  return (-1);
}
}
static int hso_mux_submit_intr_urb(struct hso_shared_int *shared_int , struct usb_device *usb ,
                                   gfp_t gfp )
{
  int result ;
  unsigned int tmp ;
  {
  tmp = __create_pipe(usb, (unsigned int )(shared_int->intr_endp)->bEndpointAddress & 127U);
  usb_fill_int_urb(shared_int->shared_intr_urb, usb, tmp | 1073741952U, shared_int->shared_intr_buf,
                   1, & intr_callback, (void *)shared_int, (int )(shared_int->intr_endp)->bInterval);
  result = ldv_usb_submit_urb_50(shared_int->shared_intr_urb, gfp);
  if (result != 0) {
    dev_warn((struct device const *)(& usb->dev), "%s failed mux_intr_urb %d\n",
             "hso_mux_submit_intr_urb", result);
  } else {
  }
  return (result);
}
}
static struct tty_operations const hso_serial_ops =
     {0, 0, 0, & hso_serial_open, & hso_serial_close, 0, 0, & hso_serial_write, 0, 0,
    & hso_serial_write_room, & hso_serial_chars_in_buffer, & hso_serial_ioctl, 0,
    & hso_serial_set_termios, 0, & hso_unthrottle, 0, 0, 0, 0, 0, 0, 0, 0, & hso_serial_tiocmget,
    & hso_serial_tiocmset, 0, 0, & hso_get_count, 0, 0, 0, 0};
static struct usb_driver hso_driver =
     {(char const *)(& driver_name), & hso_probe, & hso_disconnect, 0, & hso_suspend,
    & hso_resume, & hso_resume, 0, 0, (struct usb_device_id const *)(& hso_ids),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, 1U, 1U, (unsigned char)0};
static int hso_init(void)
{
  int i ;
  int result ;
  struct lock_class_key __key ;
  {
  printk("\016hso: %s\n", version);
  spinlock_check(& serial_table_lock);
  __raw_spin_lock_init(& serial_table_lock.ldv_6347.rlock, "&(&serial_table_lock)->rlock",
                       & __key);
  i = 0;
  goto ldv_46974;
  ldv_46973:
  serial_table[i] = (struct hso_device *)0;
  i = i + 1;
  ldv_46974: ;
  if (i <= 255) {
    goto ldv_46973;
  } else {
  }
  tty_drv = alloc_tty_driver(256U);
  if ((unsigned long )tty_drv == (unsigned long )((struct tty_driver *)0)) {
    return (-12);
  } else {
  }
  tty_drv->driver_name = (char const *)(& driver_name);
  tty_drv->name = (char const *)(& tty_filename);
  if (tty_major != 0) {
    tty_drv->major = tty_major;
  } else {
  }
  tty_drv->minor_start = 0;
  tty_drv->type = 3;
  tty_drv->subtype = 1;
  tty_drv->flags = 12UL;
  tty_drv->init_termios = tty_std_termios;
  hso_init_termios(& tty_drv->init_termios);
  tty_set_operations(tty_drv, & hso_serial_ops);
  result = tty_register_driver(tty_drv);
  if (result != 0) {
    printk("\v%s - tty_register_driver failed(%d)\n", "hso_init", result);
    goto err_free_tty;
  } else {
  }
  result = ldv_usb_register_driver_51(& hso_driver, & __this_module, "hso");
  if (result != 0) {
    printk("\vCould not register hso driver? error: %d\n", result);
    goto err_unreg_tty;
  } else {
  }
  return (0);
  err_unreg_tty:
  tty_unregister_driver(tty_drv);
  err_free_tty:
  put_tty_driver(tty_drv);
  return (result);
}
}
static void hso_exit(void)
{
  {
  printk("\016hso: unloaded\n");
  tty_unregister_driver(tty_drv);
  put_tty_driver(tty_drv);
  ldv_usb_deregister_52(& hso_driver);
  return;
}
}
extern int ldv_ndo_init_4(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_4 ;
int ldv_retval_6 ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern int ldv_ndo_uninit_4(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_7 ;
void ldv_net_device_ops_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  hso_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_usb_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1560UL);
  hso_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_initialize_tty_operations_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(512UL);
  hso_serial_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(1752UL);
  hso_serial_ops_group1 = (struct tty_struct *)tmp___0;
  return;
}
}
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device *ldvarg0 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg2 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg3 ;
  void *tmp___2 ;
  pm_message_t ldvarg4 ;
  struct usb_device_id *ldvarg5 ;
  void *tmp___3 ;
  bool ldvarg7 ;
  void *ldvarg6 ;
  void *tmp___4 ;
  unsigned int ldvarg8 ;
  unsigned int tmp___5 ;
  unsigned int ldvarg11 ;
  unsigned int tmp___6 ;
  int ldvarg14 ;
  int tmp___7 ;
  struct serial_icounter_struct *ldvarg13 ;
  void *tmp___8 ;
  unsigned long ldvarg10 ;
  unsigned long tmp___9 ;
  struct ktermios *ldvarg12 ;
  void *tmp___10 ;
  unsigned int ldvarg9 ;
  unsigned int tmp___11 ;
  unsigned char *ldvarg15 ;
  void *tmp___12 ;
  struct net_device *ldvarg16 ;
  void *tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_zalloc(1416UL);
  ldvarg0 = (struct device *)tmp___0;
  tmp___1 = ldv_zalloc(48UL);
  ldvarg2 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_zalloc(232UL);
  ldvarg3 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_zalloc(32UL);
  ldvarg5 = (struct usb_device_id *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg6 = tmp___4;
  tmp___5 = __VERIFIER_nondet_uint();
  ldvarg8 = tmp___5;
  tmp___6 = __VERIFIER_nondet_uint();
  ldvarg11 = tmp___6;
  tmp___7 = __VERIFIER_nondet_int();
  ldvarg14 = tmp___7;
  tmp___8 = ldv_zalloc(80UL);
  ldvarg13 = (struct serial_icounter_struct *)tmp___8;
  tmp___9 = __VERIFIER_nondet_ulong();
  ldvarg10 = tmp___9;
  tmp___10 = ldv_zalloc(44UL);
  ldvarg12 = (struct ktermios *)tmp___10;
  tmp___11 = __VERIFIER_nondet_uint();
  ldvarg9 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg15 = (unsigned char *)tmp___12;
  tmp___13 = ldv_zalloc(3264UL);
  ldvarg16 = (struct net_device *)tmp___13;
  ldv_initialize();
  memset((void *)(& ldvarg4), 0, 4UL);
  memset((void *)(& ldvarg7), 0, 1UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_47152:
  tmp___14 = __VERIFIER_nondet_int();
  switch (tmp___14) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      hso_sysfs_show_porttype(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_47103;
    default:
    ldv_stop();
    }
    ldv_47103: ;
  } else {
  }
  goto ldv_47105;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_4 == 3) {
      hso_net_close(hso_netdev_ops_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_47108;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      ldv_retval_1 = hso_net_open(hso_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_4 = 3;
      } else {
      }
    } else {
    }
    goto ldv_47108;
    case 2: ;
    if (ldv_state_variable_4 == 3) {
      hso_net_start_xmit(ldvarg3, hso_netdev_ops_group1);
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_47108;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      hso_net_tx_timeout(hso_netdev_ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 3) {
      hso_net_tx_timeout(hso_netdev_ops_group1);
      ldv_state_variable_4 = 3;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      hso_net_tx_timeout(hso_netdev_ops_group1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_47108;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = ldv_ndo_init_4();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        usb_counter = usb_counter + 1;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47108;
    case 5: ;
    if (ldv_state_variable_4 == 2) {
      ldv_ndo_uninit_4();
      ldv_state_variable_4 = 1;
      usb_counter = usb_counter - 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47108;
    default:
    ldv_stop();
    }
    ldv_47108: ;
  } else {
  }
  goto ldv_47105;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_5 = hso_probe(hso_driver_group1, (struct usb_device_id const *)ldvarg5);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47117;
    case 1: ;
    if (ldv_state_variable_1 == 2) {
      ldv_retval_4 = hso_suspend(hso_driver_group1, ldvarg4);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_1 = 3;
      } else {
      }
    } else {
    }
    goto ldv_47117;
    case 2: ;
    if (ldv_state_variable_1 == 3) {
      ldv_retval_3 = hso_resume(hso_driver_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_1 = 2;
      } else {
      }
    } else {
    }
    goto ldv_47117;
    case 3: ;
    if (ldv_state_variable_1 == 3 && usb_counter == 0) {
      hso_disconnect(hso_driver_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_1 == 2 && usb_counter == 0) {
      hso_disconnect(hso_driver_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47117;
    case 4: ;
    if (ldv_state_variable_1 == 3) {
      ldv_retval_2 = hso_resume(hso_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_1 = 2;
      } else {
      }
    } else {
    }
    goto ldv_47117;
    default:
    ldv_stop();
    }
    ldv_47117: ;
  } else {
  }
  goto ldv_47105;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___18 = __VERIFIER_nondet_int();
    switch (tmp___18) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      hso_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_47126;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_6 = hso_init();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_initialize_tty_operations_2();
        ldv_state_variable_3 = 1;
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_6 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_47126;
    default:
    ldv_stop();
    }
    ldv_47126: ;
  } else {
  }
  goto ldv_47105;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    tmp___19 = __VERIFIER_nondet_int();
    switch (tmp___19) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      hso_rfkill_set_block(ldvarg6, (int )ldvarg7);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_47131;
    default:
    ldv_stop();
    }
    ldv_47131: ;
  } else {
  }
  goto ldv_47105;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    tmp___20 = __VERIFIER_nondet_int();
    switch (tmp___20) {
    case 0: ;
    if (ldv_state_variable_2 == 2) {
      hso_serial_write(hso_serial_ops_group1, (unsigned char const *)ldvarg15, ldvarg14);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      hso_get_count(hso_serial_ops_group1, ldvarg13);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_get_count(hso_serial_ops_group1, ldvarg13);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 2: ;
    if (ldv_state_variable_2 == 2) {
      hso_serial_close(hso_serial_ops_group1, hso_serial_ops_group0);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_47135;
    case 3: ;
    if (ldv_state_variable_2 == 1) {
      hso_unthrottle(hso_serial_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_unthrottle(hso_serial_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_write_room(hso_serial_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_write_room(hso_serial_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 5: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_7 = hso_serial_open(hso_serial_ops_group1, hso_serial_ops_group0);
      if (ldv_retval_7 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47135;
    case 6: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_set_termios(hso_serial_ops_group1, ldvarg12);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_set_termios(hso_serial_ops_group1, ldvarg12);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 7: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_ioctl(hso_serial_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_ioctl(hso_serial_ops_group1, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 8: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_chars_in_buffer(hso_serial_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_chars_in_buffer(hso_serial_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 9: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_tiocmget(hso_serial_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_tiocmget(hso_serial_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    case 10: ;
    if (ldv_state_variable_2 == 1) {
      hso_serial_tiocmset(hso_serial_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      hso_serial_tiocmset(hso_serial_ops_group1, ldvarg9, ldvarg8);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_47135;
    default:
    ldv_stop();
    }
    ldv_47135: ;
  } else {
  }
  goto ldv_47105;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___21 = __VERIFIER_nondet_int();
    switch (tmp___21) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      ethtool_op_get_link(ldvarg16);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_47149;
    default:
    ldv_stop();
    }
    ldv_47149: ;
  } else {
  }
  goto ldv_47105;
  default:
  ldv_stop();
  }
  ldv_47105: ;
  goto ldv_47152;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_4(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_7(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_pskb_expand_head_22(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_24(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_copy_26(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_copy(ldv_func_arg1, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_27(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_28(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_29(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_30(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = pskb_expand_head(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, flags);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_32(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  struct sk_buff *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = skb_clone(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_33(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_34(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_35(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_36(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_37(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_38(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_39(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_40(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_41(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_42(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
void ldv_unregister_netdev_43(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_4 = 0;
  return;
}
}
void ldv_free_netdev_44(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_4 = 0;
  return;
}
}
int ldv_register_netdev_45(struct net_device *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_net_device_ops_4();
  return (ldv_func_res);
}
}
struct urb *ldv_usb_alloc_urb_46(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_47(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_48(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
struct urb *ldv_usb_alloc_urb_49(int ldv_func_arg1 , gfp_t flags )
{
  struct urb *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_alloc_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_submit_urb_50(struct urb *ldv_func_arg1 , gfp_t flags )
{
  int tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = usb_submit_urb(ldv_func_arg1, flags);
  return (tmp);
}
}
int ldv_usb_register_driver_51(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_1 = 1;
  usb_counter = 0;
  ldv_usb_driver_1();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_52(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_1 = 0;
  return;
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_hi_schedule(struct tasklet_struct *arg0) {
  return;
}
void *external_alloc(void);
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return (struct tty_driver *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_netdev_mqs(int arg0, const char *arg1, void (*arg2)(struct net_device *), unsigned int arg3, unsigned int arg4) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void free_netdev(struct net_device *arg0) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_4() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void put_tty_driver(struct tty_driver *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void *external_alloc(void);
struct rfkill *rfkill_alloc(const char *arg0, struct device *arg1, const enum rfkill_type arg2, const struct rfkill_ops *arg3, void *arg4) {
  return (struct rfkill *)external_alloc();
}
void rfkill_destroy(struct rfkill *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rfkill_register(struct rfkill *arg0) {
  return __VERIFIER_nondet_int();
}
void rfkill_unregister(struct rfkill *arg0) {
  return;
}
void schedule() {
  return;
}
void *external_alloc(void);
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void tty_encode_baud_rate(struct tty_struct *arg0, speed_t arg1, speed_t arg2) {
  return;
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_kref_put(struct tty_struct *arg0) {
  return;
}
void tty_port_destroy(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
void *external_alloc(void);
struct device *tty_port_register_device(struct tty_port *arg0, struct tty_driver *arg1, unsigned int arg2, struct device *arg3) {
  return (struct device *)external_alloc();
}
void *external_alloc(void);
struct tty_struct *tty_port_tty_get(struct tty_port *arg0) {
  return (struct tty_struct *)external_alloc();
}
void tty_port_tty_hangup(struct tty_port *arg0, bool arg1) {
  return;
}
void tty_port_tty_set(struct tty_port *arg0, struct tty_struct *arg1) {
  return;
}
void tty_port_tty_wakeup(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
void tty_termios_encode_baud_rate(struct ktermios *arg0, speed_t arg1, speed_t arg2) {
  return;
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void *external_alloc(void);
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return (struct urb *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int usb_autopm_get_interface(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_autopm_put_interface(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_lock_device_for_reset(struct usb_device *arg0, const struct usb_interface *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
