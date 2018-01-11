with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

procedure link_list_example is

   type Node;
   type NodePointer is access Node;

   type Node is record
      data: Integer;
      next: NodePointer;
   end record;

   l : NodePointer := new Node'(11, new Node'(22, new Node'(33, null)));
   t : NodePointer := l;

   --while t.all.next /= null loop
   --this is not incorrect because the first node could be null, and this also
   --won't print the last node in the list
   procedure print_list (l: NodePointer) is
   begin

      while t /= null loop
         put(t.all.data);
         t := t.all.next;
      end loop;

   end print_list;

   procedure copy_list (l: in NodePointer; r: out NodePointer) is
   begin

      if l = null then
         r := null;
      elsif l.all.next = null then
         r := new Node'(l.data, null);
      end if;

      while l /= null loop
         null;
      end loop;

   end copy_list;

begin
   null;
end link_list_example;
